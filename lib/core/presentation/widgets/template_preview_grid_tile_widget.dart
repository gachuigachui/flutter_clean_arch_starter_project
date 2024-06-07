import 'package:flutter/material.dart';
 
import '../../data/models/my_model.dart';

class TemplatePreviewGridTileWidget extends StatelessWidget {
  final ReceiptTemplateModel template;

  TemplatePreviewGridTileWidget({required this.template});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, 'templates/gallery/template/preview',
            arguments: template);
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(template.header,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 4),
              Text(template.subheader, style: TextStyle(color: Colors.grey)),
              SizedBox(height: 8),
              Text(template.total, style: TextStyle(fontSize: 18)),
            ],
          ),
        ),
      ),
    );
  }
}
