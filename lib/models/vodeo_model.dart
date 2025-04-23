import 'dart:convert';

class YoutubeVideoModel {
  final String title;
  final String url;

  YoutubeVideoModel({required this.title, required this.url});

  factory YoutubeVideoModel.fromJson(Map<String, dynamic> json) {
    return YoutubeVideoModel(
      title: utf8.decode(json['title'].toString().codeUnits),
      url: json['url'],
    );
  }
}
