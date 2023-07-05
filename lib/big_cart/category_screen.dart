import 'package:flutter/material.dart';

import '../common/all_names.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  Map mapdata = {
    "text": "black color",
  };

  List<Map<String, dynamic>> arrayList = [
    {
      "itemname": "Vegetables",
      "image": "assets/category_images/vegetables.png",
    },
    {
      "itemname": "Fruits",
      "image": "assets/category_images/fruits.png",
    },
    {
      "itemname": "Beverages",
      "image": "assets/category_images/beverages.png",
    },
    {
      "itemname": "Grocery",
      "image": "assets/category_images/grocery.png",
    },
    {
      "itemname": "Edibleoil",
      "image": "assets/category_images/edible_oil.png",
    },
    {
      "itemname": "Household",
      "image": "assets/category_images/household.png",
    },
    {
      "itemname": "Babycare",
      "image": "assets/category_images/babycare.png",
    },
  ];
  List<Map<String, dynamic>> list = [
    {
      "itemname": "Vegetables",
      "image": "assets/category_images/vegetables.png",
    },
    {
      "itemname": "Fruits",
      "image": "assets/category_images/fruits.png",
    },
    {
      "itemname": "Beverages",
      "image": "assets/category_images/beverages.png",
    },
    {
      "itemname": "Grocery",
      "image": "assets/category_images/grocery.png",
    },
    {
      "itemname": "Edibleoil",
      "image": "assets/category_images/edible_oil.png",
    },
    {
      "itemname": "Household",
      "image": "assets/category_images/household.png",
    },
    {
      "itemname": "Babycare",
      "image": "assets/category_images/babycare.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                const AllNames(
                  name: "Categories",
                ),
                const SizedBox(width: 100),
                Image.asset(
                  "assets/category_images/filtter.png",
                  height: 22.05,
                  width: 23.09,
                ),
              ],
            ),
            const SizedBox(height: 30),
            Expanded(
              child: GridView.builder(
                itemCount: 7,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisExtent: 140,
                ),
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                    color: arrayList[index]["color"],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color(0xFFFFFFFF),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              arrayList[index]["image"],
                              height: 66,
                              width: 66,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              arrayList[index]["itemname"],
                              style: const TextStyle(
                                color: Color(0xFF868889),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
