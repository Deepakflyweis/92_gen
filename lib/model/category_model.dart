// To parse this JSON data, do
//
//     final categoryModel = categoryModelFromJson(jsonString);

import 'dart:convert';

List<CategoryModel> categoryModelFromJson(String str) => List<CategoryModel>.from(json.decode(str).map((x) => CategoryModel.fromJson(x)));

String categoryModelToJson(List<CategoryModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CategoryModel {
  CategoryModel({
    this.pdf,
    this.id,
    this.categoryId,
    this.title,
    this.subTitle,
    this.qar,
    this.v,
  });

  Pdf? pdf;
  String? id;
  CategoryId? categoryId;
  String? title;
  String? subTitle;
  String? qar;
  int? v;

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
    pdf: Pdf.fromJson(json["pdf"]),
    id: json["_id"],
    categoryId: CategoryId.fromJson(json["category_id"]),
    title: json["title"],
    subTitle: json["subTitle"],
    qar: json["qar"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "pdf": pdf?.toJson(),
    "_id": id,
    "category_id": categoryId?.toJson(),
    "title": title,
    "subTitle": subTitle,
    "qar": qar,
    "__v": v,
  };
}

class CategoryId {
  CategoryId({
    this.id,
    this.title,
  });

  String? id;
  String? title;

  factory CategoryId.fromJson(Map<String, dynamic> json) => CategoryId(
    id: json["_id"],
    title: json["title"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "title": title,
  };
}

class Pdf {
  Pdf({
    this.filename,
    this.filetype,
    this.filesize,
    this.url,
  });

  String? filename;
  String? filetype;
  String? filesize;
  String? url;

  factory Pdf.fromJson(Map<String, dynamic> json) => Pdf(
    filename: json["filename"],
    filetype: json["filetype"],
    filesize: json["filesize"],
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "filename": filename,
    "filetype": filetype,
    "filesize": filesize,
    "url": url,
  };
}
