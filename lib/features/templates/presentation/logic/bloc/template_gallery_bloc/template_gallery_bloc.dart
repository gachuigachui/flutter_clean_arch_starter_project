import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_clean_arch_starter_project/core/abstract/failures.dart';
import 'package:flutter_clean_arch_starter_project/features/printer/print/data/models/my_model.dart';
import 'package:flutter_clean_arch_starter_project/core/data/models/my_model.dart';
import 'package:flutter_clean_arch_starter_project/features/templates/domain/repository/repository.dart';
import 'package:flutter_clean_arch_starter_project/features/templates/domain/usecases/feature_usecase.dart';

import '../../../../../../core/abstract/receipt_template_entity.dart';
import '../../../../data/repostiory/my_repository.dart';

part 'template_gallery_event.dart';
part 'template_gallery_state.dart';

class TemplateGalleryBloc
    extends Bloc<TemplateGalleryEvent, TemplateGalleryState> {
  late StreamCategoryTemplatesUsecase streamCategoryTemplatesUsecase;
  late FetchTemplatesUsecase fetchTemplatesUsecase;
  late final TemplateGalleryRepostory repository;
  TemplateGalleryBloc() : super(TemplateGalleryState()) {
    //
    repository = TemplateGalleryRepostory();

    on<TemplateGalleryEvent>((event, emit) {
      // TODO: implement event handler
    });

//
    on<FetchTemplatesEvent>((event, emit) async {
      // init usecase
      fetchTemplatesUsecase = FetchTemplatesUsecase(repository: repository);

      // execute
      // Either<Failure, List<ReceiptTemplateModel>>
      Either<DatabaseFailure, List<ReceiptTemplateEntity>> result =
          await fetchTemplatesUsecase.execute();
      result.fold((failure) {
        return Left(failure);
      }, (success) {
        return Right(success);
      });
    });

    //
    on<StreamTemplatesEvent>((event, emit) async {
      // init usecase
      streamCategoryTemplatesUsecase =
          StreamCategoryTemplatesUsecase(repository: repository);
      // execute

      Either<DatabaseFailure, Stream<List<ReceiptTemplateModel>>> result =
          await streamCategoryTemplatesUsecase.execute();
      result.fold((failure) {
        return Left(failure);
      }, (success) {
        success.listen((templates) {
          if (templates != null) {}
          emit(state.copyWith(receipts: templates.map(toElement)));
        });
      });
    });
  }
}
