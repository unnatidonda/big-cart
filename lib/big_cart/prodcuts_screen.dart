import 'package:flutter/material.dart';

import '../common/all_names.dart';

class ProdcutsScreen extends StatefulWidget {
  const ProdcutsScreen({super.key});

  @override
  State<ProdcutsScreen> createState() => _ProdcutsScreenState();
}

class _ProdcutsScreenState extends State<ProdcutsScreen> {
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
        child: Column(
          children: [
            const Row(
              children: [
                AllNames(
                  name: "Vegetables",
                ),
              ],
            ),
            const SizedBox(height: 30),
            Expanded(
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  arrayList[index]["image"],
                                  height: 84,
                                  width: 84,
                                ),
                                // IconButton(
                                //   onPressed: () {},
                                //   icon: Icon(
                                //     Icons.favorite_border_rounded,
                                //   ),
                                //   color: Colors.grey,
                                //   focusColor: Colors.red,
                                //   disabledColor: Colors.red,
                                //   highlightColor: Colors.red,
                                //   hoverColor: Colors.red,
                                // ),
                              ],
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
                            const SizedBox(height: 3),
                            Row(
                              children: [
                                const SizedBox(width: 15),
                                Image.asset(
                                  "assets/images/add_to_cart.png",
                                  height: 22,
                                  width: 21,
                                ),
                                const SizedBox(width: 15),
                                const Text(
                                  "Add to Cart",
                                  style: TextStyle(
                                    color: Color(0xFF010101),
                                    fontSize: 13,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            )
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
