import 'package:big_cart/common/transaction.dart';
import 'package:flutter/material.dart';

class Transactions extends StatefulWidget {
  const Transactions({Key? key}) : super(key: key);

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFF4F5F9),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                BackButton(
                  color: Color(0xFF000000),
                ),
                SizedBox(width: 80),
                Text(
                  "Transactions",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF000000),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.only(left: 12, right: 12),
              child: Column(
                children: [
                  Row(
                    children: [
                      Transaction(
                        text: "Master Card",
                        textSpan: "\nDec 12 2021 at 10:00 pm",
                        image: "assets/Transactions_images/round.png",
                        price: "\$89",
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Transaction(
                        text: "Master Card",
                        textSpan: "\nDec 12 2021 at 10:00 pm",
                        image: "assets/Transactions_images/visa.png",
                        price: "\$109",
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Transaction(
                        text: "Paypal",
                        textSpan: "\nDec 12 2021 at 10:00 pm",
                        image: "assets/Transactions_images/paypal.png",
                        price: "\$567",
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Transaction(
                        text: "Master Card",
                        textSpan: "\nDec 12 2021 at 10:00 pm",
                        image: "assets/Transactions_images/paypal.png",
                        price: "\$567",
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Transaction(
                        text: "Master Card",
                        textSpan: "\nDec 12 2021 at 10:00 pm",
                        image: "assets/Transactions_images/visa.png",
                        price: "\$109",
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Transaction(
                        text: "Master Card",
                        textSpan: "\nDec 12 2021 at 10:00 pm",
                        image: "assets/Transactions_images/round.png",
                        price: "\$89",
                      ),
                    ],
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
