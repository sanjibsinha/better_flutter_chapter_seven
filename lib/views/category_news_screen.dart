import 'package:flutter/material.dart';
import '../model/dummy_data.dart';
import '../controllers/news_item.dart';

class CategoryNewsScreen extends StatelessWidget {
  static const routeName = '/category-news';

  const CategoryNewsScreen({Key? key}) : super(key: key);

  /// returns NewsItem controller

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryNews = dummyNews.where((news) {
      return news.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return NewsItem(
            id: categoryNews[index].id,
            title: categoryNews[index].title,
            imageUrl: categoryNews[index].imageURL,
            nature: categoryNews[index].nature,
          );
        },
        itemCount: categoryNews.length,
      ),
    );
  }
}
