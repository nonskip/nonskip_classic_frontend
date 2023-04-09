import 'package:http/http.dart' as http;
import 'dart:convert';
import 'OpenAIDialogue.dart';
import 'OpenAIMessage.dart';



class RESTService {

  static Future<OpenAIDialogue> chat(OpenAIDialogue dialogue) async {
    final response = await http.post(
      Uri.parse('http://127.0.0.1:8000/chat'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(dialogue.toJson()),
    );
    if (response.statusCode == 200) {
      // then parse the JSON.
      return OpenAIDialogue.fromJson(jsonDecode(utf8.decode(response.bodyBytes)));
    } else {
      // then throw an exception.
      throw Exception('Failed to create Dialogue.');
    }
  }

  static Future<OpenAIDialogue> explain(String context, String selectedText) async {
    final response = await http.get(
      Uri.parse('http://127.0.0.1:8000/explain?context=$context&s_text=$selectedText')
    );
    if (response.statusCode == 200) {
      // then parse the JSON.
      return OpenAIDialogue.fromJson(jsonDecode(utf8.decode(response.bodyBytes)));
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      throw Exception('Failed to create Dialogue.');
    }
  }

  static Future<OpenAIDialogue> reflect() async {
    final response = await http.get(
      Uri.parse('http://127.0.0.1:8000/reflect')
    );
    if (response.statusCode == 200) {
      // then parse the JSON.
      return OpenAIDialogue.fromJson(jsonDecode(utf8.decode(response.bodyBytes)));
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      throw Exception('Failed to create Dialogue.');
    }
  }

  static Future<OpenAIDialogue> coffeeChat() async {
      final response = await http.get(Uri.parse('http://127.0.0.1:8000/coffeechat'));
      if (response.statusCode == 200) {
        // then parse the JSON.
        return OpenAIDialogue.fromJson(jsonDecode(utf8.decode(response.bodyBytes)));
      } else {
        // If the server did not return a 201 CREATED response,
        // then throw an exception.
        throw Exception('Failed to create Dialogue.');
      }
  }

  static void log(String context, String selectedText, OpenAIDialogue dialogue) async {
    final response = await http.post(
      Uri.parse('...'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        'context': context,
        's_text': selectedText,
        'dialogue': dialogue.toJson(),
      })
    );
    if (response.statusCode != 200) {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      throw Exception('Failed to create Dialogue.');
    }
  }
}