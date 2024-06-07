// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: overridden_fields

import 'package:flutter_clean_arch_starter_project/core/mixin/mixin.dart';
import 'package:flutter_clean_arch_starter_project/core/abstract/abstract_document_entity.dart';

abstract class AbstractReceiptEntity extends AbstractDocumentEntity
    with TimestammpedMixin {
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

  @override
  final List<String> searchTerms;

  //
  AbstractReceiptEntity({
    required this.id,
    this.image,
    required this.createdAt,
    this.updatedAt,
    this.deletedAt,
    required this.searchTerms,
  }) : super(id: id, searchTerms: searchTerms);
}
