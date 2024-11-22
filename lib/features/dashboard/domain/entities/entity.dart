// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../../../../core/domain/entities/entity.dart';

abstract class FeatureEntity2 extends AbstractEntity {
  @override
  final String id;
  final String? description;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final DateTime? deletedAt;
  FeatureEntity2({
    required this.id,
    this.description,
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
