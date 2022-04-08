

// To parse this JSON data, do
//
//     final agreementsModel = agreementsModelFromJson(jsonString);

import 'dart:convert';

AgreementsModel agreementsModelFromJson(String str) => AgreementsModel.fromJson(json.decode(str));

String agreementsModelToJson(AgreementsModel data) => json.encode(data.toJson());

class AgreementsModel {
  AgreementsModel({
    this.pdf,
    this.id,
    required this.categoryId,
    this.title,
    this.subTitle,
    required this.qar,
    this.v,
  });

  Pdf? pdf;
  String? id;
  CategoryId categoryId;
  String? title;
  String? subTitle;
  String qar;
  int? v;

  factory AgreementsModel.fromJson(Map<String, dynamic> json) => AgreementsModel(
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
    "category_id": categoryId.toJson(),
    "title": title,
    "subTitle": subTitle,
    "qar": qar,
    "__v": v,
  };
}

class CategoryId {
  CategoryId({
    required this.id,
    required this.title,
  });

  String id;
  String title;

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
