// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: overridden_fields

import 'package:flutter_clean_arch_starter_project/core/domain/entities/entity.dart';

abstract class TaxCodeEntity extends AbstractEntity {
  @override
  final String id;
  final String? image;
  final double rate;
  final String name;
  final String description;
  final List<String> updates;
  TaxCodeEntity({
    required this.id,
    this.image,
    required this.rate,
    required this.name,
    required this.description,
    required this.updates,
  }) : super(id: id);
}
