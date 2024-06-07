// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: overridden_fields

import 'package:flutter_clean_arch_starter_project/core/domain/entities/entity.dart';
import 'package:flutter_clean_arch_starter_project/core/mixin/mixin.dart';

abstract class AbstractDocumentEntity extends AbstractEntity
    with SearchableMixin {
  @override
  final String id;
  final String? image;
  @override
  final List<String> searchTerms;

  AbstractDocumentEntity({
    required this.id,
    this.image,
    required this.searchTerms,
  }) : super(id: id);
}
