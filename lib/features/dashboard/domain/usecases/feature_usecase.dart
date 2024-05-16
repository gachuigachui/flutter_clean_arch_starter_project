// ignore_for_file: public_member_api_docs, sort_constructors_first
// A business logic use case that works on a given class
import 'package:dartz/dartz.dart';

import '../../../../core/abstract/failures.dart';
import '../../../../core/abstract/params.dart';
import '../../../../core/data/repository/repository.dart';
import '../../../../core/domain/usecases/usecase.dart';
import '../../data/models/my_model.dart';


class FeatureUsecase implements Usecase<Either<Failure, List<FeatureModel>>, AbstractParams> {
// Needs a repository to talk to apis

  FeatureRepository myRepostory;
  FeatureUsecase({
    required this.myRepostory,
  });
  
  @override
  Future<Either<Failure, Either<Failure, List<FeatureModel>>?>> execute({AbstractParams? params}) {
    // TODO: implement execute
    throw UnimplementedError();
  }
 
}
