import 'package:flutter/material.dart';
import 'package:navigator_two/models/bookmodel.dart';

class HomePage extends StatelessWidget {
  final List<Book> books;
  final ValueChanged<Book> OnTapped;
  const HomePage({super.key, required this.books, required this.OnTapped});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Navigator 2.0')),
        body: ListView(
          children: [
            for (var book in books)
              ListTile(
                title: Text(book.title),
                subtitle: Text(book.author),
                onTap: () {
                  OnTapped(book);
                },
              )
          ],
        ));
  }
}
