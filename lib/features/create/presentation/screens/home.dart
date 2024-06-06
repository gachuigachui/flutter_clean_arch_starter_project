// FeatureHome
import 'package:flutter/material.dart';

import '../../../../core/presentation/screens/base_screen.dart';
import '../../../../core/presentation/themes/default_theme.dart';
import '../../../../core/presentation/widgets/custom_app_bar.dart';
import '../../../../core/presentation/widgets/custom_card.dart';
import '../../../print/data/models/my_model.dart';
import '../routes/route_constants.dart';
import '../widgets/widgets.dart';

class ReceiptTemplatesGallery extends StatelessWidget {
  final List<ReceiptTemplateModel> templates = [
    // Add some sample templates here
    ReceiptTemplateModel(
      header: '*** WONKA ENTERPRISES LIMITED ***',
      subheader: 'P.O. BOX 67890-6062 NAIROBI',
      details: [
        '#01 OPERATOR 01 DEVICE #001',
        'Receipt 0001',
        'Date: 06.03.2022'
      ],
      subtotals: [
        'EXCL AMT 410,881.58',
        'VAT (16.00%) 65,741.05',
        'TOTAL TAX 65,741.05'
      ],
      total: 'TOTAL AMOUNT 476,622.63',
      footer: '**** END OF LEGAL RECEIPT ****',
    ),
    // Add more templates if needed
  ];

  ReceiptTemplatesGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Receipt Templates Gallery'),
      ),
      body: GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: templates.length,
        itemBuilder: (context, index) {
          return TemplatePreviewGridTileWidget(template: templates[index]);
        },
      ),
    );
  }
}

class ReceiptTemplatePreviewScreen extends StatelessWidget {
  const ReceiptTemplatePreviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ReceiptTemplateModel template =
        ModalRoute.of(context)!.settings.arguments as ReceiptTemplateModel;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Template Preview'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(template.header,
                style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            Text(template.subheader, style: const TextStyle(color: Colors.grey)),
            const SizedBox(height: 8),
            ...template.details.map((detail) => Text(detail)).toList(),
            const Divider(),
            ...template.subtotals.map((subtotal) => Text(subtotal)).toList(),
            const Divider(),
            Text(template.total, style: const TextStyle(fontSize: 18)),
            const Divider(),
            Text(template.footer,
                style: const TextStyle(fontStyle: FontStyle.italic)),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'create/receipt',
                    arguments: template);
              },
              child: const Text('Create Receipt'),
            ),
          ],
        ),
      ),
    );
  }
}

class FeatureHomeScreen extends StatelessWidget {
  const FeatureHomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      appBar: CustomAppBar.appBar(title: const Text('FeatureHome Screen')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: CustomCard(
                    child: Column(
                      children: [
                        const Text(
                          'FeatureHome Screen',
                          style: largeBoldTextPrimary,
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'This is the FeatureHome Screen',
                          style: textPrimary,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed(featureHomeRoute);
                              },
                              child: const Text(
                                'FeatureHome Screen',
                                style: textPrimary,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CreateReceiptFromTemplateScreen extends StatefulWidget {
  const CreateReceiptFromTemplateScreen({super.key});

  @override
  _CreateReceiptFromTemplateScreenState createState() =>
      _CreateReceiptFromTemplateScreenState();
}

class _CreateReceiptFromTemplateScreenState
    extends State<CreateReceiptFromTemplateScreen> {
  final _formKey = GlobalKey<FormState>();
  late ReceiptTemplateModel template;
  String dateFormat = 'ddmmyyyy';

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    template =
        ModalRoute.of(context)!.settings.arguments as ReceiptTemplateModel;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Receipt'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              TextFormField(
                initialValue: template.header,
                decoration: const InputDecoration(labelText: 'Header'),
                validator: (value) =>
                    value!.isEmpty ? 'Please enter header' : null,
              ),
              TextFormField(
                initialValue: template.subheader,
                decoration: const InputDecoration(labelText: 'Subheader'),
                validator: (value) =>
                    value!.isEmpty ? 'Please enter subheader' : null,
              ),
              // Add more fields for details, subtotals, total, and footer
              DropdownButtonFormField<String>(
                value: dateFormat,
                decoration: const InputDecoration(labelText: 'Date Format'),
                items: const [
                  DropdownMenuItem(value: 'ddmmyyyy', child: Text('ddmmyyyy')),
                  DropdownMenuItem(value: 'mmddyyyy', child: Text('mmddyyyy')),
                ],
                onChanged: (value) {
                  setState(() {
                    dateFormat = value!;
                  });
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushNamed(context, 'preview/receipt');
                  }
                },
                child: const Text('Preview Receipt'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
