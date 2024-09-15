import 'dart:convert';
import 'package:language_learning_app/model/DictionaryModel.dart';
import 'package:language_learning_app/network/base_api.dart';
import 'package:http/http.dart' as http;

class FetchDictionaryApi extends BaseApi {
  static Future<List<DictionaryModel>?> getDictionaryApi(String word) async {
    try {
      final response = await http.get(Uri.parse('${BaseApi.dictionaryUrl}$word'));
      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        return data.map((json) => DictionaryModel.fromJson(json)).toList();
      } else {
        throw Exception("No data fetched");
      }
    } catch (e) {
      print(e.toString());
      return null; // Return null in case of error
    }
  }
}
