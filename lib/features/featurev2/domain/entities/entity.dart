// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../../../../core/domain/entities/entity.dart';

abstract class FeatureEntity2 extends AbstractEntity {
  final String id; 
  FeatureEntity2({
    required this.id, 
  }) : super(
          id: id, 
        );
}
