import 'package:dartz/dartz.dart';

import '../../abstract/failures.dart';
import '../../abstract/params.dart';

abstract class Usecase<AbstractEntity, UsecaseParams extends AbstractParams> {
  Future<Either<Failure, AbstractEntity?>> execute({UsecaseParams? params});
}
