// ignore_for_file: public_member_api_docs, sort_constructors_first
// A business logic use case that works on a given class
import 'package:dartz/dartz.dart';

import 'package:flutter_clean_arch_starter_project/features/templates/data/models/feature_model.dart';
import 'package:flutter_clean_arch_starter_project/features/templates/domain/entities/entity.dart';
import 'package:flutter_clean_arch_starter_project/core/abstract/receipt_template_entity.dart';

import '../../../../core/abstract/failures.dart';
import '../../../../core/abstract/params.dart';
import '../../../../core/domain/usecases/usecase.dart';
import '../../data/repostiory/my_repository.dart';
import '../repository/repository.dart';

class StreamCategoryTemplatesUsecase
    implements
        Usecase<Stream<List<ReceiptTemplateEntity>>,
            StreamCategoryTemplatesUsecaseParams> {
// Needs a repository to talk to apis

  TemplateGalleryRepostoryInterface repository;
  StreamCategoryTemplatesUsecase({
    required this.repository,
  });

  @override
  Future<Either<DatabaseFailure, Stream<List<ReceiptTemplateEntity>>>> execute(
      {StreamCategoryTemplatesUsecaseParams? params}) async {
    return await repository.streamReceiptTemplates(
        categoryId: params!.data.category);
  }
}

class StreamCategoryTemplatesUsecaseParams extends AbstractParams {
  final String category;
  StreamCategoryTemplatesUsecaseParams({
    required this.category,
  });

  @override
  StreamCategoryTemplatesUsecaseParams get data => this;
}

/// usecases
/// - add/remove to favourites
/// - reaction like/dislike
/// - review add/edit/remove
/// - feedback add/edit/remove

class FetchTemplatesUsecase
    implements Usecase<List<ReceiptTemplateEntity>, FetchTemplatesUsecaseParams> {
// Needs a repository to talk to apis

  TemplateGalleryRepostory repository;
  FetchTemplatesUsecase({
    required this.repository,
  });

  @override
  Future<Either<DatabaseFailure, List<ReceiptTemplateEntity>>> execute(
      {FetchTemplatesUsecaseParams? params}) {
    // Future<Either<DatabaseFailure, ReceiptTemplateEntity>>
    return repository.fetchReceiptTemplates(categoryId: params!.category);
  }
}

class FetchTemplatesUsecaseParams extends AbstractParams {
  final String category;
  FetchTemplatesUsecaseParams({
    required this.category,
  });

  @override
  FetchTemplatesUsecaseParams get data => this;
}

///
///
///
//