import 'package:dartz/dartz.dart';

import '../../../../core/abstract/failures.dart';
import '../../../../core/abstract/params.dart';
import '../../../../core/domain/repository/repository.dart';
import '../models/my_model.dart';

class FeatureRepository
    implements FeatureRepositoryInterface<FeatureModel, AbstractParams> {
  @override
  Future<Either<Failure, List<FeatureModel>?>> list({AbstractParams? params}) {
    // TODO: implement list
    throw UnimplementedError();
  }
}
