import 'package:big_cart/big_cart/prodcuts_screen.dart';
import 'package:flutter/material.dart';

import '../common/home.dart';
import 'category_screen.dart';
import 'product_detail.dart';
import 'search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Map mapdata = {
    "text": "black color",
  };

  List<Map<String, dynamic>> arrayList = [
    {
      "price": "\$8.00",
      "itemname": "Vegetables",
      "text": "dozen",
      "image": "assets/prodcuts_images/fresh_peach.png",
    },
    {
      "price": "\$7.00",
      "itemname": "Fruits",
      "text": "2.0 lbs",
      "image": "assets/prodcuts_images/aocado.png",
    },
    {
      "price": "\$9.90",
      "itemname": "Beverages",
      "text": "1.50 lbs",
      "image": "assets/prodcuts_images/pineapple.png",
    },
    {
      "price": "\$7.05",
      "itemname": "Grocery",
      "text": "5.0 lbs",
      "image": "assets/prodcuts_images/black_grapes.png",
    },
    {
      "price": "\$2.09",
      "itemname": "Edibleoil",
      "text": "1.50 lbs",
      "image": "assets/prodcuts_images/pomegranate.png",
    },
    {
      "price": "\$3.00",
      "itemname": "Household",
      "text": "1 kg",
      "image": "assets/prodcuts_images/fresh_b_roccoli.png",
    },
  ];
  List<Map<String, dynamic>> list = [
    {
      "price": "\$8.00",
      "itemname": "Vegetables",
      "text": "dozen",
      "image": "assets/prodcuts_images/fresh_peach.png",
    },
    {
      "price": "\$7.00",
      "itemname": "Fruits",
      "text": "2.0 lbs",
      "image": "assets/prodcuts_images/aocado.png",
    },
    {
      "price": "\$9.90",
      "itemname": "Beverages",
      "text": "1.50 lbs",
      "image": "assets/prodcuts_images/pineapple.png",
    },
    {
      "price": "\$7.05",
      "itemname": "Grocery",
      "text": "5.0 lbs",
      "image": "assets/prodcuts_images/black_grapes.png",
    },
    {
      "price": "\$2.09",
      "itemname": "Edibleoil",
      "text": "1.50 lbs",
      "image": "assets/prodcuts_images/pomegranate.png",
    },
    {
      "price": "\$3.00",
      "itemname": "Household",
      "text": "1 kg",
      "image": "assets/prodcuts_images/fresh_b_roccoli.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Search(),
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 64,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xFFF5F5F5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            color: Color(0xFF868889),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          "Search keywords..",
                          style: TextStyle(
                            color: Color(0xFF868889),
                            fontSize: 16,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Stack(
                children: [
                  Image.asset(
                    "assets/images/home.png",
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 160, left: 50),
                    child: Text(
                      "20% off on your\nfirst purchase",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        color: Color(0xFF000000),
                        fontSize: 19,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ],
              ),
              // SizedBox(height: 15),
              Row(
                children: [
                  const SizedBox(width: 10),
                  const Text(
                    "Categories",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Color(0xFF000000),
                      fontFamily: "Poppins",
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CategoryScreen(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Home(
                      color: Color(0xFFE6F2EA),
                      image: "assets/images/vegetable.png",
                      name: "vegetable",
                    ),
                    SizedBox(width: 12),
                    Home(
                      color: Color(0xFFE6F2EA),
                      image: "assets/images/Fruits.png",
                      name: "Fruits",
                    ),
                    SizedBox(width: 12),
                    Home(
                      color: Color(0xFFE6F2EA),
                      image: "assets/images/beverage.png",
                      name: "beverage",
                    ),
                    SizedBox(width: 12),
                    Home(
                      color: Color(0xFFE6F2EA),
                      image: "assets/images/Grocery.png",
                      name: "Grocery",
                    ),
                    SizedBox(width: 12),
                    Home(
                      color: Color(0xFFE6F2EA),
                      image: "assets/images/Edible_oil.png",
                      name: "Edible oil",
                    ),
                    SizedBox(width: 12),
                    Home(
                      color: Color(0xFFE6F2EA),
                      image: "assets/images/household.png",
                      name: "House hold",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  const SizedBox(width: 10),
                  const Text(
                    "Featured products",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Color(0xFF000000),
                      fontFamily: "Poppins",
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProdcutsScreen(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProductDetail(),
                      ),
                    );
                  },
                  child: GridView.builder(
                    itemCount: 6,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 234,
                    ),
                    itemBuilder: (context, index) => Container(
                      decoration: BoxDecoration(
                        color: arrayList[index]["color"],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 234,
                          width: 181,
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
                                  height: 84,
                                  width: 84,
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  arrayList[index]["price"],
                                  style: const TextStyle(
                                    color: Color(0xFF6CC51D),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  arrayList[index]["itemname"],
                                  style: const TextStyle(
                                    color: Color(0xFF000000),
                                    fontSize: 16,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  arrayList[index]["text"],
                                  style: const TextStyle(
                                    color: Color(0xFF868889),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const Divider(
                                  color: Color(0xFFEBEBEB),
                                  height: 2,
                                  thickness: 2,
                                ),
                              ],
                            ),
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
      ),
    );
  }
}
