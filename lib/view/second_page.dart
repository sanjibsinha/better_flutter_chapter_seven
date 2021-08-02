import 'package:flutter/material.dart';
import '../model/dummy_news.dart';
import '../model/news.dart';

class SecondPage extends StatelessWidget {
  final int id;
  final String title;
  final Color color;
  final Nature nature;

  const SecondPage({
    Key? key,
    required this.id,
    required this.title,
    required this.color,
    required this.nature,
  }) : super(key: key);

  String get natureText {
    switch (nature) {
      case Nature.hard:
        return 'Event based Latest Hard News >>';
      case Nature.soft:
        return 'Take time and read Soft News Story >>';
      default:
        return 'Unknown';
    }
  }

  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context)!.settings.arguments as Map;
    final id = arguments['id'];
    final title = arguments['title'];
    final color = arguments['color'];
    final categoryBooks = dummyNews.where((book) {
      return book.categories.contains(id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: color,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  natureText,
                  style: const TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    padding: const EdgeInsets.all(10.0),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                        bottomLeft: Radius.circular(15.0),
                        bottomRight: Radius.circular(15.0),
                      ),
                      child: Image.network(categoryBooks[index].imageURL),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 5.0,
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  categoryBooks[index].title,
                  style: const TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  categoryBooks[index].detail,
                  style: const TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ),
            ],
          );
        },
        itemCount: categoryBooks.length,
      ),
    );
  }
}
