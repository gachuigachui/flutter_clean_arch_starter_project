// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'template_gallery_bloc.dart';

class TemplateGalleryState extends Equatable {
  final List<ReceiptTemplateModel> receipts;
  final List<ReceiptCategoryModel> receiptsCategories;
  final List<TaxCodeModel> taxCodes;

  const TemplateGalleryState({
    this.receipts = const [],
     this.receiptsCategories = const [],
     this.taxCodes = const [],
  });

  @override
  List<Object> get props => [
        receipts,
        receiptsCategories,
        taxCodes,
      ];

  TemplateGalleryState copyWith({
    List<ReceiptTemplateModel>? receipts,
    List<ReceiptCategoryModel>? receiptsCategories,
    List<TaxCodeModel>? taxCodes,
  }) {
    return TemplateGalleryState(
      receipts: receipts ?? this.receipts,
      receiptsCategories: receiptsCategories ?? this.receiptsCategories,
      taxCodes: taxCodes ?? this.taxCodes,
    );
  }
}
