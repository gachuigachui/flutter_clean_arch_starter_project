import 'package:dartz/dartz.dart';
import 'package:flutter_clean_arch_starter_project/core/abstract/receipt_template_entity.dart';
import 'package:flutter_clean_arch_starter_project/features/templates/data/models/feature_model.dart';
import 'package:flutter_clean_arch_starter_project/features/templates/domain/repository/repository.dart';

import '../../../../core/abstract/failures.dart';
import '../../../../core/abstract/params.dart';
import '../../../../core/domain/repository/repository.dart';
import '../../../../core/data/models/my_model.dart';

class TemplateGalleryRepostory implements TemplateGalleryRepostoryInterface {
  @override
  Future<Either<DatabaseFailure, ReceiptTemplateEntity>> fetchReceiptTemplate({required String templateId}) {
    // TODO: implement fetchReceiptTemplate
    throw UnimplementedError();
  }

  @override
  Future<Either<DatabaseFailure, List<ReceiptTemplateEntity>>> fetchReceiptTemplates({required String categoryId}) {
    // TODO: implement fetchReceiptTemplates
    throw UnimplementedError();
  }

  @override
  Future<Either<DatabaseFailure, Stream<List<ReceiptTemplateEntity>>>> streamReceiptTemplates({required String categoryId}) {
    // TODO: implement streamReceiptTemplates
    throw UnimplementedError();
  }

}
