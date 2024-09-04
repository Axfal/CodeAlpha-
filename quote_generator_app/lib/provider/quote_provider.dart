import 'package:flutter/material.dart';
import 'package:quote_generator_app/model/quote_model.dart';
import 'package:quote_generator_app/response/api.dart';

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
     print("error hivi ali shah itan $e");
   }
   notifyListeners();
 }


}