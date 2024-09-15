// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:language_learning_app/provider/dictionary_provider.dart';
import 'package:language_learning_app/views/home_screen.dart';
import 'package:provider/provider.dart';

class DictionaryScreen extends StatefulWidget {
  const DictionaryScreen({super.key});

  @override
  State<DictionaryScreen> createState() => _DictionaryScreenState();
}

class _DictionaryScreenState extends State<DictionaryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              _buildSearchWidget(),
              Expanded(child: _buildResponseWidget()),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                  child: Text('Go Back'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSearchWidget() {
    final provider = Provider.of<DictionaryProvider>(context, listen: false);
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: MediaQuery.of(context).size.width * 0.02,
      ),
      child: TextField(
        style: Theme.of(context).textTheme.headlineSmall,
        decoration: InputDecoration(
          hintText: "Search your word here",
          hintStyle: Theme.of(context).textTheme.headlineSmall,
          prefixIcon: Icon(
            Icons.search,
            color: Colors.white,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
        onSubmitted: (value) {
          provider.fetchDictionaryData(value);
        },
      ),
    );
  }

  Widget _buildResponseWidget() {
    final heightMedia = MediaQuery.of(context).size.height * 0.911;
    final widthMedia = MediaQuery.of(context).size.width * 0.911;
    return Consumer<DictionaryProvider>(
      builder: (context, provider, child) {
        if (provider.dictionary.isEmpty) {
          return Center(
            child: SizedBox(
              height: heightMedia,
              width: widthMedia,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    child:
                        Text('No data Found', style: TextStyle(fontSize: 22)),
                  ),
                ),
              ),
            ),
          );
        } else {
          return ListView.builder(
            itemCount: 2,
            itemBuilder: (context, index) {
              final dictionaryItem = provider.dictionary[index];
              return SizedBox(
                height: heightMedia,
                child: Card(
                  child: ListTile(
                    title: Text('Word : ${dictionaryItem.word}',
                        style: TextStyle(fontSize: 22)),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Phonetic : ${dictionaryItem.phonetic}',
                            style: TextStyle(fontSize: 16)),
                        Text(
                            'Part of Speech : ${dictionaryItem.meanings![index].partOfSpeech}',
                            style: TextStyle(fontSize: 16)),
                        Text(
                            'Meanings : ${dictionaryItem.meanings![index].definitions?[index].definition}',
                            style: TextStyle(fontSize: 16)),
                        Text(
                            'Part of Speech : ${dictionaryItem.meanings![index + 1].partOfSpeech}',
                            style: TextStyle(fontSize: 16)),
                        Text(
                            'Meanings : ${dictionaryItem.meanings![index].definitions![index + 1].definition}',
                            style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        }
      },
    );
  }
}
