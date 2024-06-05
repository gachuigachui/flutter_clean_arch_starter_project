// ignore_for_file: public_member_api_docs, sort_constructors_first

abstract class AbstractEntity {
  final String id;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final DateTime? deletedAt;
  const AbstractEntity({
    required this.id,
    required this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  AbstractEntity copyWith();
}
