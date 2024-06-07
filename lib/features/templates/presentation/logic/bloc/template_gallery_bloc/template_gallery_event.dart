// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'template_gallery_bloc.dart';

sealed class TemplateGalleryEvent extends Equatable {
  const TemplateGalleryEvent();

  @override
  List<Object> get props => [];
}


class FetchTemplatesEvent extends TemplateGalleryEvent {
  final String categoryId;
  const FetchTemplatesEvent({
    required this.categoryId,
  });
}

class StreamTemplatesEvent extends TemplateGalleryEvent {
  final String categoryId;
  const StreamTemplatesEvent({
    required this.categoryId,
  });
}
