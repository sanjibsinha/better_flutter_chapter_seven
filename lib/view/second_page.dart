import 'package:better_flutter_chapter_seven/model/news.dart';
import 'package:flutter/material.dart';
import '../model/dummy_news.dart';

class SecondPage extends StatelessWidget {
  SecondPage({Key? key}) : super(key: key);

  var title;
  var color;
  var id;
  var nature;
  var natureOutput;

  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context)!.settings.arguments as Map;
    final id = arguments['id'];
    final title = arguments['title'];
    final color = arguments['color'];
    final categoryBooks = DUMMY_NEWS.where((book) {
      return book.categories.contains(id);
    }).toList();

    nature = Nature.hard;
    if (nature) {
      natureOutput = 'Hard News';
    } else {
      natureOutput = 'Soft News';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: color,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            children: [
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
