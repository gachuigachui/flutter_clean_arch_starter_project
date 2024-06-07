// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: overridden_fields

import 'package:flutter_clean_arch_starter_project/core/abstract/abstract_receipt_entity.dart';
import 'package:flutter_clean_arch_starter_project/core/abstract/receipt_category_entity.dart';
import 'package:flutter_clean_arch_starter_project/core/abstract/receipt_template_entity.dart';
import 'package:flutter_clean_arch_starter_project/core/abstract/simple_invoice_entity.dart';

abstract class ECRReceiptEnity extends AbstractReceiptEntity {
  @override
  final String id;
  @override
  final String? image;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? deletedAt;
  final ReceiptCategoryEntity receiptCategoryEntity;
  final ReceiptTemplateEntity receiptTemplateEntity;

  @override
  final List<String> searchTerms;

  final SimpleInvoiceEntity simpleInvoice;

  ECRReceiptEnity({
    required this.id,
    this.image,
    required this.createdAt,
    this.updatedAt,
    this.deletedAt,
    required this.receiptCategoryEntity,
    required this.receiptTemplateEntity,
    required this.searchTerms,
    required this.simpleInvoice,
  }) : super(id: id, createdAt: createdAt, searchTerms: searchTerms);
}
