// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import '../../domain/entities/entity.dart';

class Model extends AbstractEntity {
  final String id;
  final String? description;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final DateTime? deletedAt;
  Model({
    required this.id,
    this.description,
    required this.createdAt,
    this.updatedAt,
    this.deletedAt,
  }) : super(
          id: id,
          description: description,
          createdAt: createdAt,
          updatedAt: updatedAt,
          deletedAt: deletedAt,
        );

  @override
  List<Object?> get props => [
        id,
        description,
        createdAt,
        updatedAt,
        deletedAt,
      ];

  Model copyWith({
    String? id,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) {
    return Model(
      id: id ?? this.id,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'description': description,
      'createdAt': createdAt.millisecondsSinceEpoch,
      'updatedAt': updatedAt?.millisecondsSinceEpoch,
      'deletedAt': deletedAt?.millisecondsSinceEpoch,
    };
  }

  factory Model.fromMap(Map<String, dynamic> map) {
    return Model(
      id: map['id'] as String,
      description: map['description'] != null ? map['description'] as String : null,
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['createdAt'] as int),
      updatedAt: map['updatedAt'] != null ? DateTime.fromMillisecondsSinceEpoch(map['updatedAt'] as int) : null,
      deletedAt: map['deletedAt'] != null ? DateTime.fromMillisecondsSinceEpoch(map['deletedAt'] as int) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Model.fromJson(String source) => Model.fromMap(json.decode(source) as Map<String, dynamic>);
}
