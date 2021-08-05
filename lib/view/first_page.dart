import 'package:flutter/material.dart';
import '../controller/all_categories.dart';
import '../model/dummy_category.dart';
import '../controller/news_item.dart';
import '../model/dummy_news.dart';
import 'second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily News',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        primaryColor: Colors.amber,
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText2: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText1: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              headline6: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      // home: CategoriesScreen(),
      initialRoute: '/', // default is '/'
      routes: {
        '/': (context) => const FirstPageFirstBody(),
        FirstPageBody.routeName: (context) => const FirstPageBody(),
        SecondPage.routeName: (context) => const SecondPage(),
      },

      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => const FirstPageBody(),
        );
      },
    );
  }
}

class FirstPageFirstBody extends StatelessWidget {
  const FirstPageFirstBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Headlines Today'),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 20.0,
        ),
        children: dummyCategories.map(
          (e) {
            return AllCategories(
              id: e.id,
              title: e.title,
              color: e.color,
            );
          },
        ).toList(),
      ),
    );
  }
}

class FirstPageBody extends StatelessWidget {
  static const routeName = '/category-news';
  const FirstPageBody({Key? key}) : super(key: key);

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
        itemBuilder: (context, index) {
          return NewsItem(
            id: categoryNews[index].id,
            detail: categoryNews[index].detail,
            title: categoryNews[index].title,
            imageURL: categoryNews[index].imageURL,
            nature: categoryNews[index].nature,
          );
        },
        itemCount: categoryNews.length,
      ),
    );
  }
}
