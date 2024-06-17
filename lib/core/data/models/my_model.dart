// ignore_for_file: public_member_api_docs, sort_constructors_first, overridden_fields
import 'dart:convert';

import 'package:flutter_clean_arch_starter_project/core/mixin/mixin.dart';
import 'package:flutter_clean_arch_starter_project/core/abstract/abstract_document_entity.dart';
import 'package:flutter_clean_arch_starter_project/core/abstract/abstract_receipt_entity.dart';
import 'package:flutter_clean_arch_starter_project/core/abstract/business_information_entity.dart';
import 'package:flutter_clean_arch_starter_project/core/abstract/customer_information_entity.dart';
import 'package:flutter_clean_arch_starter_project/core/abstract/e_c_r_receipt_enity.dart';
 import 'package:flutter_clean_arch_starter_project/core/abstract/receipt_category_entity.dart';
import 'package:flutter_clean_arch_starter_project/core/abstract/receipt_template_entity.dart';
import 'package:flutter_clean_arch_starter_project/core/abstract/simple_invoice_entity.dart';
import 'package:flutter_clean_arch_starter_project/core/abstract/tax_code_entity.dart';

class ReceiptTemplateModel extends ReceiptTemplateEntity {
  @override
  final String id;
  @override
  final String? image;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? deletedAt;
  final SimpleInvoiceModel simpleInvoiceModel;
  @override
  final List<String> searchTerms;

  @override
  final String header;
  @override
  final String subheader;
  @override
  final List<String> details;
  @override
  final List<String> subtotals;
  @override
  final String total;
  @override
  final String footer;
  @override
  final String orginalDateFormat;
  @override
  final String newDateFormat;

  ReceiptTemplateModel({
    required this.id,
    this.image,
    required this.createdAt,
    this.updatedAt,
    this.deletedAt,
    required this.simpleInvoiceModel,
    required this.searchTerms,
    required this.header,
    required this.subheader,
    required this.details,
    required this.subtotals,
    required this.total,
    required this.footer,
    required this.orginalDateFormat,
    required this.newDateFormat,
  }) : super(
            id:id,
image:image,
createdAt:createdAt,
updatedAt:updatedAt,
deletedAt:deletedAt,
simpleInvoiceEntity:simpleInvoiceModel,
searchTerms:searchTerms,
header:header,
subheader:subheader,
details:details,
subtotals:subtotals,
total:total,
footer:footer,
orginalDateFormat:orginalDateFormat,
newDateFormat:newDateFormat,
          );

  ReceiptTemplateModel copyWith({
    String? id,
    String? image,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    SimpleInvoiceModel? simpleInvoiceModel,
    List<String>? searchTerms,
    String? header,
    String? subheader,
    List<String>? details,
    List<String>? subtotals,
    String? total,
    String? footer,
    String? orginalDateFormat,
    String? newDateFormat,
  }) {
    return ReceiptTemplateModel(
      id: id ?? this.id,
      image: image ?? this.image,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      simpleInvoiceModel: simpleInvoiceModel ?? this.simpleInvoiceModel,
      searchTerms: searchTerms ?? this.searchTerms,
      header: header ?? this.header,
      subheader: subheader ?? this.subheader,
      details: details ?? this.details,
      subtotals: subtotals ?? this.subtotals,
      total: total ?? this.total,
      footer: footer ?? this.footer,
      orginalDateFormat: orginalDateFormat ?? this.orginalDateFormat,
      newDateFormat: newDateFormat ?? this.newDateFormat,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'image': image,
      'createdAt': createdAt.millisecondsSinceEpoch,
      'updatedAt': updatedAt?.millisecondsSinceEpoch,
      'deletedAt': deletedAt?.millisecondsSinceEpoch,
      'simpleInvoiceModel': simpleInvoiceModel.toMap(),
      'searchTerms': searchTerms,
      'header': header,
      'subheader': subheader,
      'details': details,
      'subtotals': subtotals,
      'total': total,
      'footer': footer,
      'orginalDateFormat': orginalDateFormat,
      'newDateFormat': newDateFormat,
    };
  }

  factory ReceiptTemplateModel.fromMap(Map<String, dynamic> map) {
    return ReceiptTemplateModel(
      id: map['id'] as String,
      image: map['image'] != null ? map['image'] as String : null,
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['createdAt'] as int),
      updatedAt: map['updatedAt'] != null ? DateTime.fromMillisecondsSinceEpoch(map['updatedAt'] as int) : null,
      deletedAt: map['deletedAt'] != null ? DateTime.fromMillisecondsSinceEpoch(map['deletedAt'] as int) : null,
      simpleInvoiceModel: SimpleInvoiceModel.fromMap(map['simpleInvoiceModel'] as Map<String,dynamic>),
      searchTerms: List<String>.from((map['searchTerms'] as List<String>)),
      header: map['header'] as String,
      subheader: map['subheader'] as String,
      details: List<String>.from((map['details'] as List<String>)),
      subtotals: List<String>.from((map['subtotals'] as List<String>)),
      total: map['total'] as String,
      footer: map['footer'] as String,
      orginalDateFormat: map['orginalDateFormat'] as String,
      newDateFormat: map['newDateFormat'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ReceiptTemplateModel.fromJson(String source) => ReceiptTemplateModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

class AbstractDocumentModel extends AbstractDocumentEntity
    with SearchableMixin {
  @override
  final String id;

  @override
  final List<String> searchTerms;

  AbstractDocumentModel({
    required this.id,
    required this.searchTerms,
  }) : super(id: id, searchTerms: searchTerms);
}

class AbstractReceiptModel extends AbstractReceiptEntity
    with TimestammpedMixin {
  @override
  final String id;

  @override
  final DateTime createdAt;

  @override
  final DateTime? updatedAt;

  @override
  final DateTime? deletedAt;

  @override
  final List<String> searchTerms;

  //
  AbstractReceiptModel({
    required this.id,
    required this.createdAt,
    this.updatedAt,
    this.deletedAt,
    required this.searchTerms,
  }) : super(
          id: id,
          createdAt: createdAt,
          updatedAt: updatedAt,
          deletedAt: deletedAt,
          searchTerms: searchTerms,
        );

  AbstractReceiptModel copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    List<String>? searchTerms,
  }) {
    return AbstractReceiptModel(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      searchTerms: searchTerms ?? this.searchTerms,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'createdAt': createdAt.millisecondsSinceEpoch,
      'updatedAt': updatedAt?.millisecondsSinceEpoch,
      'deletedAt': deletedAt?.millisecondsSinceEpoch,
      'searchTerms': searchTerms,
    };
  }

  factory AbstractReceiptModel.fromMap(Map<String, dynamic> map) {
    return AbstractReceiptModel(
      id: map['id'] as String,
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['createdAt'] as int),
      updatedAt: map['updatedAt'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['updatedAt'] as int)
          : null,
      deletedAt: map['deletedAt'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['deletedAt'] as int)
          : null,
      searchTerms: List<String>.from((map['searchTerms'] as List<String>)),
    );
  }

  String toJson() => json.encode(toMap());

  factory AbstractReceiptModel.fromJson(String source) =>
      AbstractReceiptModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

// business categorization of receipts ecr, digital, etc
class ReceiptCategoryModel extends ReceiptCategoryEntity {
  @override
  final String id;
  @override
  final String? category;
  @override
  final String? description;

  @override
  final String? image;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? deletedAt;
  ReceiptCategoryModel({
    required this.id,
    this.category,
    this.description,
    this.image,
    required this.createdAt,
    this.updatedAt,
    this.deletedAt,
  }) : super(
            id: id,
            description: category,
            createdAt: createdAt,
            updatedAt: updatedAt,
            deletedAt: deletedAt,
          );

  ReceiptCategoryModel copyWith({
    String? id,
    String? category,
    String? description,
    String? image,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) {
    return ReceiptCategoryModel(
      id: id ?? this.id,
      category: category ?? this.category,
      description: description ?? this.description,
      image: image ?? this.image,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'category': category,
      'description': description,
      'image': image,
      'createdAt': createdAt.millisecondsSinceEpoch,
      'updatedAt': updatedAt?.millisecondsSinceEpoch,
      'deletedAt': deletedAt?.millisecondsSinceEpoch,
    };
  }

  factory ReceiptCategoryModel.fromMap(Map<String, dynamic> map) {
    return ReceiptCategoryModel(
      id: map['id'] as String,
      category: map['category'] != null ? map['category'] as String : null,
      description: map['description'] != null ? map['description'] as String : null,
      image: map['image'] != null ? map['image'] as String : null,
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['createdAt'] as int),
      updatedAt: map['updatedAt'] != null ? DateTime.fromMillisecondsSinceEpoch(map['updatedAt'] as int) : null,
      deletedAt: map['deletedAt'] != null ? DateTime.fromMillisecondsSinceEpoch(map['deletedAt'] as int) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ReceiptCategoryModel.fromJson(String source) => ReceiptCategoryModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

class ECRReceipModel extends ECRReceiptEnity {
  @override
  final String id;
  @override
  final String? image;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? deletedAt;
  final ReceiptCategoryModel receiptCategoryModel;
  final ReceiptTemplateModel receiptTemplateModel;

  @override
  final List<String> searchTerms;

  @override
  final SimpleInvoiceModel simpleInvoice;
  ECRReceipModel({
    required this.id,
    this.image,
    required this.createdAt,
    this.updatedAt,
    this.deletedAt,
    required this.receiptCategoryModel,
    required this.receiptTemplateModel,
    required this.searchTerms,
    required this.simpleInvoice,
  }) : super(
              id: id,
              receiptTemplateEntity:receiptTemplateModel,
              receiptCategoryEntity:receiptCategoryModel,
              createdAt: createdAt,
              updatedAt: updatedAt,
              deletedAt: deletedAt,
              searchTerms: searchTerms,
              simpleInvoice: simpleInvoice, 
            );

  ECRReceipModel copyWith({
    String? id,
    String? image,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    ReceiptCategoryModel? receiptCategoryModel,
    ReceiptTemplateModel? receiptTemplateModel,
    List<String>? searchTerms,
    SimpleInvoiceModel? simpleInvoice,
  }) {
    return ECRReceipModel(
      id: id ?? this.id,
      image: image ?? this.image,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      receiptCategoryModel: receiptCategoryModel ?? this.receiptCategoryModel,
      receiptTemplateModel: receiptTemplateModel ?? this.receiptTemplateModel,
      searchTerms: searchTerms ?? this.searchTerms,
      simpleInvoice: simpleInvoice ?? this.simpleInvoice,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'image': image,
      'createdAt': createdAt.millisecondsSinceEpoch,
      'updatedAt': updatedAt?.millisecondsSinceEpoch,
      'deletedAt': deletedAt?.millisecondsSinceEpoch,
      'receiptCategoryModel': receiptCategoryModel.toMap(),
      'receiptTemplateModel': receiptTemplateModel.toMap(),
      'searchTerms': searchTerms,
      'simpleInvoice': simpleInvoice.toMap(),
    };
  }

  factory ECRReceipModel.fromMap(Map<String, dynamic> map) {
    return ECRReceipModel(
      id: map['id'] as String,
      image: map['image'] != null ? map['image'] as String : null,
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['createdAt'] as int),
      updatedAt: map['updatedAt'] != null ? DateTime.fromMillisecondsSinceEpoch(map['updatedAt'] as int) : null,
      deletedAt: map['deletedAt'] != null ? DateTime.fromMillisecondsSinceEpoch(map['deletedAt'] as int) : null,
      receiptCategoryModel: ReceiptCategoryModel.fromMap(map['receiptCategoryModel'] as Map<String,dynamic>),
      receiptTemplateModel: ReceiptTemplateModel.fromMap(map['receiptTemplateModel'] as Map<String,dynamic>),
      searchTerms: List<String>.from((map['searchTerms'] as List<String>)),
      simpleInvoice: SimpleInvoiceModel.fromMap(map['simpleInvoice'] as Map<String,dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory ECRReceipModel.fromJson(String source) =>
      ECRReceipModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

class BusinessInformationModel extends BusinessInformationEntity {
  @override
  final String id;

  @override
  final String name;

  @override
  final String address;

  @override
  final String phone;

  @override
  final String taxIdentificationNumber;

  @override
  final DateTime createdAt;

  @override
  final DateTime? updatedAt;

  @override
  final DateTime? deletedAt;
  BusinessInformationModel({
    required this.id,
    required this.name,
    required this.address,
    required this.phone,
    required this.taxIdentificationNumber,
    required this.createdAt,
    this.updatedAt,
    this.deletedAt,
  }) : super(
          id: id,
          name: name,
          address: address,
          phone: phone,
          taxIdentificationNumber: taxIdentificationNumber,
          createdAt: createdAt,
        );

  BusinessInformationModel copyWith({
    String? id,
    String? name,
    String? address,
    String? phone,
    String? taxIdentificationNumber,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) {
    return BusinessInformationModel(
      id: id ?? this.id,
      name: name ?? this.name,
      address: address ?? this.address,
      phone: phone ?? this.phone,
      taxIdentificationNumber:
          taxIdentificationNumber ?? this.taxIdentificationNumber,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'address': address,
      'phone': phone,
      'taxIdentificationNumber': taxIdentificationNumber,
      'createdAt': createdAt.millisecondsSinceEpoch,
      'updatedAt': updatedAt?.millisecondsSinceEpoch,
      'deletedAt': deletedAt?.millisecondsSinceEpoch,
    };
  }

  factory BusinessInformationModel.fromMap(Map<String, dynamic> map) {
    return BusinessInformationModel(
      id: map['id'] as String,
      name: map['name'] as String,
      address: map['address'] as String,
      phone: map['phone'] as String,
      taxIdentificationNumber: map['taxIdentificationNumber'] as String,
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['createdAt'] as int),
      updatedAt: map['updatedAt'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['updatedAt'] as int)
          : null,
      deletedAt: map['deletedAt'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['deletedAt'] as int)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory BusinessInformationModel.fromJson(String source) =>
      BusinessInformationModel.fromMap(
          json.decode(source) as Map<String, dynamic>);
}
 
class CustomerInformationModel extends CustomerInformationEntity {
  @override
  final String id;

  @override
  final String name;

  @override
  final String address;

  @override
  final String phone;

  @override
  final String taxIdentificationNumber;

  @override
  final DateTime createdAt;

  @override
  final DateTime? updatedAt;

  @override
  final DateTime? deletedAt;
  CustomerInformationModel({
    required this.id,
    required this.name,
    required this.address,
    required this.phone,
    required this.taxIdentificationNumber,
    required this.createdAt,
    this.updatedAt,
    this.deletedAt,
  }) : super(
          id: id,
          name: name,
          address: address,
          phone: phone,
          taxIdentificationNumber: taxIdentificationNumber,
          createdAt: createdAt,
        );

  CustomerInformationModel copyWith({
    String? id,
    String? name,
    String? address,
    String? phone,
    String? taxIdentificationNumber,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) {
    return CustomerInformationModel(
      id: id ?? this.id,
      name: name ?? this.name,
      address: address ?? this.address,
      phone: phone ?? this.phone,
      taxIdentificationNumber:
          taxIdentificationNumber ?? this.taxIdentificationNumber,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'address': address,
      'phone': phone,
      'taxIdentificationNumber': taxIdentificationNumber,
      'createdAt': createdAt.millisecondsSinceEpoch,
      'updatedAt': updatedAt?.millisecondsSinceEpoch,
      'deletedAt': deletedAt?.millisecondsSinceEpoch,
    };
  }

  factory CustomerInformationModel.fromMap(Map<String, dynamic> map) {
    return CustomerInformationModel(
      id: map['id'] as String,
      name: map['name'] as String,
      address: map['address'] as String,
      phone: map['phone'] as String,
      taxIdentificationNumber: map['taxIdentificationNumber'] as String,
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['createdAt'] as int),
      updatedAt: map['updatedAt'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['updatedAt'] as int)
          : null,
      deletedAt: map['deletedAt'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['deletedAt'] as int)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CustomerInformationModel.fromJson(String source) =>
      CustomerInformationModel.fromMap(
          json.decode(source) as Map<String, dynamic>);
}

class SimpleInvoiceModel extends SimpleInvoiceEntity with TimestammpedMixin, SearchableMixin {
  @override
  final String id;

  @override
  final DateTime createdAt;

  @override
  final DateTime? updatedAt;

  @override
  final DateTime? deletedAt;
  final BusinessInformationModel businessInformationModel;
  final CustomerInformationModel customerInformationModel;

  @override
  final double inclusiveAmount;

  @override
  final double vatAmount;

  @override
  final double exclusiveAmount;

  @override
  final String invoiceNumber;

  @override
  final DateTime invoiceDate;

  @override
  final List<TaxCodeModel> taxCodes;
  SimpleInvoiceModel({
    required this.id,
    required this.createdAt,
    this.updatedAt,
    this.deletedAt,
    required this.businessInformationModel,
    required this.customerInformationModel,
    required this.inclusiveAmount,
    required this.vatAmount,
    required this.exclusiveAmount,
    required this.invoiceNumber,
    required this.invoiceDate,
    required this.taxCodes,
  }) : super(
          id: id,
          createdAt: createdAt,
          updatedAt: updatedAt,
          deletedAt: deletedAt,
          businessInformationEntity: businessInformationModel,
          customerInformationEntity: customerInformationModel,
          inclusiveAmount: inclusiveAmount,
          vatAmount: vatAmount,
          exclusiveAmount: exclusiveAmount,
          invoiceNumber: invoiceNumber,
          invoiceDate: invoiceDate,
          taxCodes: taxCodes,
        );

  SimpleInvoiceModel copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    BusinessInformationModel? businessInformationModel,
    CustomerInformationModel? customerInformationModel,
    double? inclusiveAmount,
    double? vatAmount,
    double? exclusiveAmount,
    String? invoiceNumber,
    DateTime? invoiceDate,
    List<TaxCodeModel>? taxCodes,
  }) {
    return SimpleInvoiceModel(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      businessInformationModel: businessInformationModel ?? this.businessInformationModel,
      customerInformationModel: customerInformationModel ?? this.customerInformationModel,
      inclusiveAmount: inclusiveAmount ?? this.inclusiveAmount,
      vatAmount: vatAmount ?? this.vatAmount,
      exclusiveAmount: exclusiveAmount ?? this.exclusiveAmount,
      invoiceNumber: invoiceNumber ?? this.invoiceNumber,
      invoiceDate: invoiceDate ?? this.invoiceDate,
      taxCodes: taxCodes ?? this.taxCodes,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'createdAt': createdAt.millisecondsSinceEpoch,
      'updatedAt': updatedAt?.millisecondsSinceEpoch,
      'deletedAt': deletedAt?.millisecondsSinceEpoch,
      'businessInformationModel': businessInformationModel.toMap(),
      'customerInformationModel': customerInformationModel.toMap(),
      'inclusiveAmount': inclusiveAmount,
      'vatAmount': vatAmount,
      'exclusiveAmount': exclusiveAmount,
      'invoiceNumber': invoiceNumber,
      'invoiceDate': invoiceDate.millisecondsSinceEpoch,
      'taxCodes': taxCodes.map((x) => x.toMap()).toList(),
    };
  }

  factory SimpleInvoiceModel.fromMap(Map<String, dynamic> map) {
    return SimpleInvoiceModel(
      id: map['id'] as String,
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['createdAt'] as int),
      updatedAt: map['updatedAt'] != null ? DateTime.fromMillisecondsSinceEpoch(map['updatedAt'] as int) : null,
      deletedAt: map['deletedAt'] != null ? DateTime.fromMillisecondsSinceEpoch(map['deletedAt'] as int) : null,
      businessInformationModel: BusinessInformationModel.fromMap(map['businessInformationModel'] as Map<String,dynamic>),
      customerInformationModel: CustomerInformationModel.fromMap(map['customerInformationModel'] as Map<String,dynamic>),
      inclusiveAmount: map['inclusiveAmount'] as double,
      vatAmount: map['vatAmount'] as double,
      exclusiveAmount: map['exclusiveAmount'] as double,
      invoiceNumber: map['invoiceNumber'] as String,
      invoiceDate: DateTime.fromMillisecondsSinceEpoch(map['invoiceDate'] as int),
      taxCodes: List<TaxCodeModel>.from((map['taxCodes'] as List<int>).map<TaxCodeModel>((x) => TaxCodeModel.fromMap(x as Map<String,dynamic>),),),
    );
  }

  String toJson() => json.encode(toMap());

  factory SimpleInvoiceModel.fromJson(String source) =>
      SimpleInvoiceModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

class TaxCodeModel extends TaxCodeEntity {
  @override
  final String id;

  @override
  final double rate;

  @override
  final String name;

  @override
  final String description;

  @override
  final List<String> updates;
  TaxCodeModel({
    required this.id,
    required this.rate,
    required this.name,
    required this.description,
    required this.updates,
  }) : super(
          id: id,
          rate: rate,
          name: name,
          description: description,
          updates: updates,
        );

  TaxCodeModel copyWith({
    String? id,
    double? rate,
    String? name,
    String? description,
    List<String>? updates,
  }) {
    return TaxCodeModel(
      id: id ?? this.id,
      rate: rate ?? this.rate,
      name: name ?? this.name,
      description: description ?? this.description,
      updates: updates ?? this.updates,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'rate': rate,
      'name': name,
      'description': description,
      'updates': updates,
    };
  }

  factory TaxCodeModel.fromMap(Map<String, dynamic> map) {
    return TaxCodeModel(
      id: map['id'] as String,
      rate: map['rate'] as double,
      name: map['name'] as String,
      description: map['description'] as String,
      updates: List<String>.from((map['updates'] as List<String>)),
    );
  }

  String toJson() => json.encode(toMap());

  factory TaxCodeModel.fromJson(String source) =>
      TaxCodeModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
