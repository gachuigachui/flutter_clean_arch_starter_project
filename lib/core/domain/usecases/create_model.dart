// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import '../../abstract/failures.dart';
import '../../abstract/params.dart';
import '../../data/models/model.dart';
import '../../data/repository/repository.dart';
import '../../enum/enum.dart';
import 'usecase.dart';

class CreateModelUsecase extends Usecase<Model, CreateModelUsecaseParams> {
  final FeatureRepository repository;
  CreateModelUsecase({
    required this.repository,
  });

  @override
  Future<Either<Failure, Model?>> execute({CreateModelUsecaseParams? params}) {
    return repository.create();
  }
}

class CreateModelUsecaseParams extends AbstractParams {
  final String email;
  final String password;
  final String authToken;
  final AuthProvider authProvider;
  CreateModelUsecaseParams({
    required this.email,
    required this.password,
    required this.authToken,
    required this.authProvider,
  });
  @override
  // TODO: implement data
  get data => this;
}
