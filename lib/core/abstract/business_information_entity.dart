// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: overridden_fields

import 'package:flutter_clean_arch_starter_project/core/abstract/invoice_party_information_entity.dart';

abstract class BusinessInformationEntity extends InvoicePartyInformationEntity {
  @override
  final String id;
  @override
  final String? image;
  @override
  final String name;
  @override
  final String address;
  @override
  final String phone;
  @override
  final String taxIdentificationNumber;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? deletedAt;
  BusinessInformationEntity({
    required this.id,
    this.image,
    required this.name,
    required this.address,
    required this.phone,
    required this.taxIdentificationNumber,
    required this.createdAt,
    this.updatedAt,
    this.deletedAt,
  }) : super(
          id: id,
          name: name,
          address: address,
          phone: phone,
          taxIdentificationNumber: taxIdentificationNumber,
          createdAt: createdAt,
        );
}
