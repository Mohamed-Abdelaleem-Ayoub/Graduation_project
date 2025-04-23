import 'dart:convert';

class BookModel {
  final String title;
  final String pdfUrl;
  final String coverImage;

  BookModel({
    required this.title,
    required this.pdfUrl,
    required this.coverImage,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) {
    return BookModel(
      title: utf8.decode(json['title'].toString().codeUnits),
      pdfUrl: json['pdfUrl'],
      coverImage: json['coverImage'],
    );
  }
}
