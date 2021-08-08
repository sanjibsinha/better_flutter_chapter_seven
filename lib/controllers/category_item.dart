import 'package:flutter/material.dart';
import '../views/category_news_screen.dart';

/// the category item controller returns InkWell widget
/// that actually uses onTap void function that returns
/// selectCategory method that uses Navigator widget's
/// static method of that passes context and that also calls a
/// static method pushNamed that passes CategoryNewsScreen static
/// route name and it also passes a list of argumnts

class CategoryItem extends StatefulWidget {
  final String id;
  final String title;
  final Color color;

  const CategoryItem({
    Key? key,
    required this.id,
    required this.title,
    required this.color,
  }) : super(key: key);

  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  double sideLength = 50;
  void selectCategory(BuildContext ctx) {
    setState(() {
      sideLength == 50 ? sideLength = 100 : sideLength = 50;
    });
    Navigator.of(ctx).pushNamed(
      CategoryNewsScreen.routeName,
      arguments: {
        'id': widget.id,
        'title': widget.title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: sideLength,
      width: sideLength,
      duration: const Duration(seconds: 5),
      curve: Curves.easeIn,
      child: Material(
        child: InkWell(
          onTap: () => selectCategory(context),
          splashColor: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(15),
          child: Container(
            margin: const EdgeInsets.all(
              25.0,
            ),
            padding: const EdgeInsets.all(
              15.0,
            ),
            child: Text(
              widget.title,
              style: Theme.of(context).textTheme.headline6,
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  widget.color.withOpacity(0.7),
                  widget.color,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ),
    );
  }
}
