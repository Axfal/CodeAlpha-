import 'package:flutter/material.dart';

import '../model/QuoteModel.dart';
import '../response/api.dart';

class QuoteProvider with ChangeNotifier{
  QuoteModel? _quote;
  QuoteModel? get quote =>_quote;

  fetchQuote() async {
    try {
      print('1');
      final fetchedQuote = await Api.getApi();
      print('res : ${quote?.q}');
      _quote = fetchedQuote;
      print('2');
    } catch (e) {
      print("error is : $e");
    }
    notifyListeners();
  }


}