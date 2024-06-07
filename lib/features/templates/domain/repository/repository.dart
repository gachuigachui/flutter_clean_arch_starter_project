// This is the contract that the outside world must meet
// to implemented in the data layer

import 'package:dartz/dartz.dart';
import 'package:flutter_clean_arch_starter_project/core/abstract/failures.dart';
import 'package:flutter_clean_arch_starter_project/features/templates/domain/entities/entity.dart';
import 'package:flutter_clean_arch_starter_project/core/abstract/receipt_template_entity.dart';

abstract class TemplateGalleryRepostoryInterface {
  //
  Future<Either<DatabaseFailure, Stream<List<ReceiptTemplateEntity>>>>
      streamReceiptTemplates({required String categoryId});

  //
  Future<Either<DatabaseFailure, List<ReceiptTemplateEntity>>>
      fetchReceiptTemplates({required String categoryId});

  //
  Future<Either<DatabaseFailure, ReceiptTemplateEntity>> fetchReceiptTemplate(
      {required String templateId});

  // calls
  /// - add/remove to favourites
  /// - reaction like/dislike
  /// - review add/edit/remove
  /// - feedback add/edit/remove
}
