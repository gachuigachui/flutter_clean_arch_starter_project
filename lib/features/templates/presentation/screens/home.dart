// Templates Home
import 'package:flutter/material.dart';
import 'package:flutter_clean_arch_starter_project/core/presentation/widgets/template_preview_grid_tile_widget.dart';
import 'package:flutter_clean_arch_starter_project/features/templates/presentation/widgets/widget.dart';

import '../../../../core/presentation/screens/base_screen.dart';
import '../../../../core/presentation/themes/default_theme.dart';
import '../../../../core/presentation/widgets/custom_app_bar.dart';
import '../../../../core/presentation/widgets/custom_card.dart';
import '../../../create/presentation/widgets/widgets.dart';
import '../../../../core/data/models/my_model.dart';
import '../routes/route_constants.dart';

class TemplatesHomeScreen extends StatelessWidget {
  const TemplatesHomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      appBar: CustomAppBar.appBar(title: const Text('Templates Home Screen')),
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
                          'Templates Home Screen',
                          style: largeBoldTextPrimary,
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'This is the Templates Home Screen',
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
                                    .pushNamed(templatesHomeRoute);
                              },
                              child: const Text(
                                'Templates Home Screen',
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

// TemplateGalleryScreen
class TemplateGalleryScreen extends StatelessWidget {
  final List<ReceiptTemplateModel> templates = [
    // Add some sample templates here
    // ReceiptTemplateModel(
    //   header: '*** WONKA ENTERPRISES LIMITED ***',
    //   subheader: 'P.O. BOX 67890-6062 NAIROBI',
    //   details: [
    //     '#01 OPERATOR 01 DEVICE #001',
    //     'Receipt 0001',
    //     'Date: 06.03.2022'
    //   ],
    //   subtotals: [
    //     'EXCL AMT 410,881.58',
    //     'VAT (16.00%) 65,741.05',
    //     'TOTAL TAX 65,741.05'
    //   ],
    //   total: 'TOTAL AMOUNT 476,622.63',
    //   footer: '**** END OF LEGAL RECEIPT ****',
    //   id: '',
    //   createdAt: DateTime.now(),
    //   searchTerms: [],
    // ),
    // ReceiptTemplateModel(
    //   header: '*** WONKA ENTERPRISES LIMITED ***',
    //   subheader: 'P.O. BOX 67890-6062 NAIROBI',
    //   details: [
    //     '#01 OPERATOR 01 DEVICE #001',
    //     'Receipt 0001',
    //     'Date: 06.03.2022'
    //   ],
    //   subtotals: [
    //     'EXCL AMT 410,881.58',
    //     'VAT (16.00%) 65,741.05',
    //     'TOTAL TAX 65,741.05'
    //   ],
    //   total: 'TOTAL AMOUNT 476,622.63',
    //   footer: '**** END OF LEGAL RECEIPT ****',
    //     id: '',
    //   createdAt: DateTime.now(),
    //   searchTerms: [],
    // ),
    // Add more templates if needed
  ];
  TemplateGalleryScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      appBar: CustomAppBar.appBar(
          title: const Text('TemplateGalleryScreen Screen')),
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
                          'TemplateGalleryScreen Screen',
                          style: largeBoldTextPrimary,
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'This is the TemplateGalleryScreen Screen',
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
                                    .pushNamed('tutorsDefaultRoutePrefix');
                              },
                              child: const Text(
                                'TemplateGalleryScreen Screen',
                                style: textPrimary,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisExtent: 350,
                  ),
                  itemCount: templates.length,
                  itemBuilder: (context, index) {
                    return Transform.scale(
                      scale: 0.8,
                      child: GalleryTemplatePreviewGridTileWidget(
                          template: templates[index]),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// TemplateTemplateScreen
class TemplateTemplateScreen extends StatelessWidget {
  const TemplateTemplateScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      appBar: CustomAppBar.appBar(
          title: const Text('TemplateTemplateScreen Screen')),
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
                          'TemplateTemplateScreen Screen',
                          style: largeBoldTextPrimary,
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'This is the TemplateTemplateScreen Screen',
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
                                    .pushNamed(templateTemplateRoute);
                              },
                              child: const Text(
                                'TemplateTemplateScreen Screen',
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

// TemplatePreviewScreen
class TemplatePreviewScreen extends StatelessWidget {
  const TemplatePreviewScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      appBar: CustomAppBar.appBar(
          title: const Text('TemplatePreviewScreen Screen')),
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
                          'TemplatePreviewScreen Screen',
                          style: largeBoldTextPrimary,
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'This is the TemplatePreviewScreen Screen',
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
                                    .pushNamed(templatePreviewRoute);
                              },
                              child: const Text(
                                'TemplatePreviewScreen Screen',
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
