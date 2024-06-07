import 'package:flutter/material.dart';
import 'package:flutter_clean_arch_starter_project/core/data/models/my_model.dart';

class GalleryTemplatePreviewGridTileWidget extends StatelessWidget {
  final ReceiptTemplateModel template;

  const GalleryTemplatePreviewGridTileWidget(
      {super.key, required this.template});

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
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 4),
              Text(template.subheader,
                  style: const TextStyle(color: Colors.grey)),
              const SizedBox(height: 8),
              Text(template.total, style: const TextStyle(fontSize: 18)),
            ],
          ),
        ),
      ),
    );
  }
}
