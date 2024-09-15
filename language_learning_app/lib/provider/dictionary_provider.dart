import 'package:flutter/cupertino.dart';
import 'package:language_learning_app/network/fetch_dictionary_api.dart';
import 'package:language_learning_app/model/DictionaryModel.dart';

class DictionaryProvider with ChangeNotifier {
  // Define the dictionary as a list of DictionaryModel
  final List<DictionaryModel> _dictionary = [];

  // Getter for the dictionary list
  List<DictionaryModel> get dictionary => _dictionary;

  // Function to fetch dictionary data
  Future<void> fetchDictionaryData(String searchWord) async {
    try {
      // Fetch the dictionary data
      final List<DictionaryModel>? apiData = await FetchDictionaryApi.getDictionaryApi(searchWord);

      if (apiData != null) {
        _dictionary.clear(); // Clear existing data
        _dictionary.addAll(apiData); // Add new data
        notifyListeners(); // Notify listeners
      }
    } catch (e) {
      print("Error fetching dictionary data: $e");
    }
  }
}
