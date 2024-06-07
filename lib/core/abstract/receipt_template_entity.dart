// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: overridden_fields

import 'package:flutter_clean_arch_starter_project/core/domain/entities/entity.dart';
import 'package:flutter_clean_arch_starter_project/core/mixin/mixin.dart';
import 'package:flutter_clean_arch_starter_project/features/templates/domain/entities/entity.dart';
import 'package:flutter_clean_arch_starter_project/core/abstract/simple_invoice_entity.dart';

abstract class ReceiptTemplateEntity extends AbstractEntity
    with SearchableMixin, TimestammpedMixin {
  @override
  final String id;
  final String? image;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? deletedAt;
  final SimpleInvoiceEntity simpleInvoiceEntity;
  @override
  final List<String> searchTerms;

  final String header;
  final String subheader;
  final List<String> details;
  final List<String> subtotals;
  final String total;
  final String footer;
  final String orginalDateFormat;
  final String newDateFormat;

  ReceiptTemplateEntity({
    required this.id,
    this.image,
    required this.createdAt,
    this.updatedAt,
    this.deletedAt,
    required this.simpleInvoiceEntity,
    required this.searchTerms,
    required this.header,
    required this.subheader,
    required this.details,
    required this.subtotals,
    required this.total,
    required this.footer,
    required this.orginalDateFormat,
    required this.newDateFormat,
  }) : super(id: id);
}
