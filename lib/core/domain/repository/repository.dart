import 'package:dartz/dartz.dart';

import '../../abstract/failures.dart';
import '../../abstract/params.dart';

abstract interface class FeatureRepositoryInterface<AbstractEntity,
    Params extends AbstractParams?> {
  Future<Either<Failure, List<AbstractEntity>?>> list({Params? params});
}
