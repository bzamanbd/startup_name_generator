import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
class BuildSuggestions extends StatefulWidget {
  const BuildSuggestions({Key? key}) : super(key: key);

  @override
  _BuildSuggestionsState createState() => _BuildSuggestionsState();
}

class _BuildSuggestionsState extends State<BuildSuggestions> {
  @override
  Widget build(BuildContext context) {
  final _nameList = <WordPair>[];
   return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          if (i.isOdd) return const Divider();
          final index = i ~/ 2;
          if (index >= _nameList.length) {
            _nameList.addAll(generateWordPairs().take(10));
          }
          return _nameListVew(_nameList[index]);
        });
  }

  
  Widget _nameListVew(WordPair pair) {
    const _biggerFont = TextStyle(fontSize: 18.0);
    return ListTile(
      title: Center(
        child: Text(
          pair.asPascalCase,
          style: _biggerFont,
        ),
      ),
    );
  }
}