// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:equatable/equatable.dart';

abstract class EntityInterface<T> {

  Map<String, dynamic> toMap();
  factory EntityInterface.fromMap(Map<String, dynamic> map) {
    throw "Unimplemented JSON Serialization";
  }
}

abstract class AbstractEntity extends Equatable implements EntityInterface<AbstractEntity> {
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
}
