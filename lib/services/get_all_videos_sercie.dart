import 'dart:convert';
import 'package:graduation_project/models/vodeo_model.dart';
import 'package:http/http.dart' as http;

class VideoService {
  static Future<List<YoutubeVideoModel>> fetchVideos() async {
    final response = await http.get(
      Uri.parse('https://68071391e81df7060eb8bf80.mockapi.io/api/v1/videos'),
    );

    print('Status code: ${response.statusCode}');
    print('Body: ${response.body}');

    try {
      final data = json.decode(response.body);
      if (data is List) {
        return data.map((json) => YoutubeVideoModel.fromJson(json)).toList();
      } else {
        throw Exception('البيانات مش List');
      }
    } catch (e) {
      print('خطأ في فك JSON: $e');
      throw Exception('فشل في قراءة البيانات');
    }
  }
}
