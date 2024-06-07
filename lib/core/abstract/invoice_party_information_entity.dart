// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: overridden_fields

import 'package:flutter_clean_arch_starter_project/core/domain/entities/entity.dart';
import 'package:flutter_clean_arch_starter_project/core/mixin/mixin.dart';

abstract class InvoicePartyInformationEntity extends AbstractEntity
    with TimestammpedMixin, SearchableMixin {
  @override
  final String id;
  final String? image;
  final String name;
  final String address;
  final String phone;
  final String taxIdentificationNumber;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? deletedAt;
  InvoicePartyInformationEntity({
    required this.id,
    this.image,
    required this.name,
    required this.address,
    required this.phone,
    required this.taxIdentificationNumber,
    required this.createdAt,
    this.updatedAt,
    this.deletedAt,
  }) : super(id: id);
}
