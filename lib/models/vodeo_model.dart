class YoutubeVideoModel {
  final String title;
  final String url;

  YoutubeVideoModel({required this.title, required this.url});

  factory YoutubeVideoModel.fromJson(Map<String, dynamic> json) {
    return YoutubeVideoModel(title: json['title'], url: json['url']);
  }
}
