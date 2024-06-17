// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: overridden_fields

import 'package:flutter_clean_arch_starter_project/core/domain/entities/entity.dart';
import 'package:flutter_clean_arch_starter_project/core/mixin/mixin.dart';
import 'package:flutter_clean_arch_starter_project/core/abstract/business_information_entity.dart';
import 'package:flutter_clean_arch_starter_project/core/abstract/customer_information_entity.dart';
 import 'package:flutter_clean_arch_starter_project/core/abstract/tax_code_entity.dart';

abstract class SimpleInvoiceEntity extends AbstractEntity
    with TimestammpedMixin, SearchableMixin {
  @override
  final String id;
  final String? image;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? deletedAt;
  final BusinessInformationEntity businessInformationEntity;
  final CustomerInformationEntity customerInformationEntity;
  final double inclusiveAmount;
  final double vatAmount;
  final double exclusiveAmount;
  final String invoiceNumber;
  final DateTime invoiceDate;
  final List<TaxCodeEntity> taxCodes;
  SimpleInvoiceEntity({
    required this.id,
    this.image,
    required this.createdAt,
    this.updatedAt,
    this.deletedAt,
    required this.businessInformationEntity,
    required this.customerInformationEntity,
    required this.inclusiveAmount,
    required this.vatAmount,
    required this.exclusiveAmount,
    required this.invoiceNumber,
    required this.invoiceDate,
    required this.taxCodes,
  }) : super(id: id);
}
