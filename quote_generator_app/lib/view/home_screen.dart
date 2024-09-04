// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quote_generator_app/components/button.dart';
import 'package:quote_generator_app/provider/quote_provider.dart';
import 'package:share_plus/share_plus.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // QuoteModel? quote;

  @override
  Widget build(BuildContext context) {
    QuoteProvider provider = Provider.of<QuoteProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff2CAEE2),
        title: Text('Random Quote Generator',
            style: TextStyle(fontSize: 28, color: Colors.white)),
      ),
      body: Consumer<QuoteProvider>(
        builder: (context, value, child) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  // height: MediaQuery.of(context).size.height * 0.127,
                  width: MediaQuery.of(context).size.width * 0.927,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        provider.quote?.q ??
                            "Success is not final, failure is not fatal: It is the courage to continue that counts.",
                        style: TextStyle(
                          fontSize: 32,
                          color: Color(0xff2CAEE2),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(provider.quote?.a ?? "",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff2CAEE2),
                      fontWeight: FontWeight.bold
                    )),
                SizedBox(
                  height: 60,
                ),
                ButtonReuse(
                    title: 'Generate',
                    onPress: () {
                      provider.fetchQuote();
                    }),
                SizedBox(
                  height: 10,
                ),
                ButtonReuse(
                    title: 'Share',
                    onPress: () {
                      setState(() {
                        Share.share(provider.quote!.q!);
                      });

                      // Share.shareUri(uri)
                    }),
              ],
            ),
          );
        },
      ),
    );
  }
}
