import 'package:flutter/material.dart';
import '../model/dummy_news.dart';

class SecondPage extends StatelessWidget {
  static const routeName = '/news-detail';

  const SecondPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final newsId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedNews = dummyNews.firstWhere((news) => news.id == newsId);
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedNews.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedNews.imageURL,
                fit: BoxFit.cover,
              ),
            ),
            const Text('News Detail'),
            Text(selectedNews.detail),
          ],
        ),
      ),
    );
  }
}
