import 'package:flutter/material.dart';

import '../common/all_names.dart';
import '../common/favorite.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFF4F5F9),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              AllNames(
                name: "Favorites",
              ),
              SizedBox(height: 15),
              Column(
                children: [
                  SizedBox(height: 10),
                  Favorite(
                    color: Color(0xFFD2FFD0),
                    image: "assets/prodcuts_images/fresh_b_roccoli.png",
                    name: "Fresh Broccoli",
                  ),
                  SizedBox(height: 15),
                  Favorite(
                    color: Color(0xFFFEE1ED),
                    image: "assets/prodcuts_images/black_grapes.png",
                    name: "Black Grapes  ",
                  ),
                  SizedBox(height: 15),
                  Favorite(
                    color: Color(0xFFFCFFD9),
                    image: "assets/prodcuts_images/aocado.png",
                    name: "aocado",
                  ),
                  SizedBox(height: 15),
                  Favorite(
                    color: Color(0xFFFFE6C2),
                    image: "assets/prodcuts_images/pineapple.png",
                    name: "pineapple",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
