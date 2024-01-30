import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(const MaterialApp(
    home: QuoteList(),
  ));
}

  class QuoteList extends StatefulWidget {
    const QuoteList({Key? key}) : super(key: key);

    @override
    State<QuoteList> createState() => _QuoteListState();
  }

  class _QuoteListState extends State<QuoteList> {

  List<Quote> quote =[
    Quote(author: 'Oscar Wilde', text: 'The truth is bitter'),
    Quote(author: 'Oscar Wilde', text: 'Nothing lasts forever'),
    Quote(author: 'Oscar Wilde', text:  'Failure is not the end')
  ];

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Awesome Quotes'),
          backgroundColor: Colors.redAccent,
      ),
        body: Column(
          children: quote.map((quote) => Text('${quote.text} - ${quote.author}')).toList(),
        ),
      );
    }
  }
