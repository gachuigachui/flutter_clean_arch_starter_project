// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: overridden_fields

import 'package:flutter_clean_arch_starter_project/core/domain/entities/entity.dart';

abstract class ReceiptCategoryEntity extends AbstractEntity {
  @override
  final String id;
  final String? category;
  final String? description;
  final String? image;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final DateTime? deletedAt;
  ReceiptCategoryEntity({
    required this.id,
    this.category,
    this.description,
    this.image,
    required this.createdAt,
    this.updatedAt,
    this.deletedAt,
  }) : super(
            id: id,
            // description: description,
            // createdAt: createdAt,
            // updatedAt: updatedAt,
            // deletedAt: deletedAt,
          );
}
