import 'package:dartz/dartz.dart';

import '../../abstract/failures.dart';
import '../../abstract/params.dart';
import '../../domain/repository/repository.dart';
import '../models/model.dart';

class FeatureRepository
    implements FeatureRepositoryInterface<Model, AbstractParams> {
   Future<Either<Failure, Model?>> create({AbstractParams? params}) async {
    return Right(null);
  }
  
  @override
  Future<Either<Failure, List<Model>?>> list({AbstractParams? params}) {
    // TODO: implement list
    throw UnimplementedError();
  }
}
