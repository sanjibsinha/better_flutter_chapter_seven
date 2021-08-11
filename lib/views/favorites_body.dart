import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FavoritesBody extends StatelessWidget {
  const FavoritesBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        height: 300.0,
        width: 300.0,
        child: Text(
          'Favorites Tab will Display a different View!',
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
