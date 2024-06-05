
//
mixin TimestammpedMixin {
  late final DateTime createdAt;
  late final DateTime? updatedAt;
  late final DateTime? deletedAt;
}

//
mixin SerializeableMixin<T> {
  T copyWith();
  T fromMap(T data);
  Map<String, dynamic> toMap();
}

//
mixin SearchableMixin {
  late final List<String> searchTerms;
}
