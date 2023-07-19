import 'package:flutter/material.dart';

import 'about_me.dart';
import 'auth_welcome.dart';
import 'favorites_screen.dart';
import 'my_address.dart';
import 'my_cards.dart';
import 'track_order.dart';
import 'transactions.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F5F9),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            Align(
              alignment: Alignment.center,
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/Mask Group.png",
                    height: 114,
                    width: 114,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 75, top: 90),
                    child: Image.asset(
                      "assets/images/camera.png",
                      height: 24,
                      width: 24,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Olivia Austin",
              style: TextStyle(
                color: Color(0xFF000000),
                fontFamily: "Poppins",
                fontSize: 18,
                fontWeight: FontWeight.w800,
              ),
            ),
            const Text(
              "oliviaaustin@gmail.com",
              style: TextStyle(
                color: Color(0xFF868889),
                fontFamily: "Poppins",
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/account_images/person.png",
                    height: 25,
                    width: 25,
                  ),
                ),
                const Text(
                  "About me",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 14,
                    color: Color(0xFF000000),
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AboutMe(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    size: 24,
                    color: Color(0xFF868889),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/account_images/order.png",
                    height: 25,
                    width: 25,
                  ),
                ),
                const Text(
                  "My Orders",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 14,
                    color: Color(0xFF000000),
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TrackOrder(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    size: 24,
                    color: Color(0xFF868889),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/account_images/favorites.png",
                    height: 25,
                    width: 25,
                  ),
                ),
                const Text(
                  "My Favorites",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 16,
                    color: Color(0xFF000000),
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FavoritesScreen(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    size: 24,
                    color: Color(0xFF868889),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/account_images/location.png",
                    height: 25,
                    width: 25,
                  ),
                ),
                const Text(
                  "My Address",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 14,
                    color: Color(0xFF000000),
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyAddress(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    size: 24,
                    color: Color(0xFF868889),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/account_images/card.png",
                    height: 26,
                    width: 26,
                  ),
                ),
                const Text(
                  "Credit Cards",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 16,
                    color: Color(0xFF000000),
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyCards(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    size: 24,
                    color: Color(0xFF868889),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/account_images/transactions.png",
                    height: 26,
                    width: 26,
                  ),
                ),
                const Text(
                  "Transactions",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 16,
                    color: Color(0xFF000000),
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Transactions(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    size: 24,
                    color: Color(0xFF868889),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/account_images/notification.png",
                    height: 26,
                    width: 26,
                  ),
                ),
                const Text(
                  "Notification",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 16,
                    color: Color(0xFF000000),
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FavoritesScreen(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    size: 24,
                    color: Color(0xFF868889),
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AuthWelcome(),
                  ),
                );
              },
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/account_images/sign_out.png",
                      height: 26,
                      width: 26,
                    ),
                  ),
                  const Text(
                    "Sign out",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                      color: Color(0xFF000000),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
