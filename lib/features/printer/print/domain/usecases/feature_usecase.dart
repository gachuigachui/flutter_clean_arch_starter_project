// ignore_for_file: public_member_api_docs, sort_constructors_first
// A business logic use case that works on a given class
import 'package:dartz/dartz.dart';

import '../../../../../core/abstract/failures.dart';
import '../../../../../core/abstract/params.dart';
import '../../../../../core/domain/usecases/usecase.dart';
import '../../data/models/my_model.dart';
import '../../data/repostiory/my_repository.dart'; 
class FeatureUsecase implements Usecase<List<FeatureModel>, AbstractParams> {
// Needs a repository to talk to apis

  FeatureRepository myRepostory;
  FeatureUsecase({
    required this.myRepostory,
  });

  @override
  Future<Either<Failure, List<FeatureModel>?>> execute(
      {AbstractParams? params}) {
    return myRepostory.list();
  }
}
