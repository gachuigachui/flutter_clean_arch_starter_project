abstract class EquatableMixin {
  abstract final List<Object?> props;
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class AbstractEntity extends EquatableMixin
    implements AbstractEntityInterface {
  final String id;
  final String? description;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final DateTime? deletedAt;
  AbstractEntity({
    required this.id,
    this.description,
    required this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });
}

abstract interface class AbstractEntityInterface {
  Map<String, dynamic> toMap();
  factory AbstractEntityInterface.fromMap(Map<String, dynamic> map) =>
      throw "Unimplemented factory fromMap method.";
  String toJson() => throw "Unimplemented toJson method.";
  AbstractEntityInterface copyWith();
}
