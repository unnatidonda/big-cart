import 'package:flutter/material.dart';
import 'package:order_tracker/order_tracker.dart';

import '../common/all_names.dart';

class MyOrder extends StatefulWidget {
  const MyOrder({super.key});

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  List<TextDto> Orderplaced = [
    TextDto("", " "),
  ];

  List<TextDto> Orderconfirmed = [
    TextDto("", "Tue, 29th Mar '22 - 5:04pm"),
  ];

  List<TextDto> Ordershipped = [
    TextDto("", "Thu, 31th Mar '22 - 2:27pm"),
  ];

  List<TextDto> Outfordelivery = [
    TextDto("", "Thu, 31th Mar '22 - 3:58pm"),
  ];
  int currentStep = 0;

  get height => 0;
  continueStep() {
    setState(() {
      if (currentStep < 2) {}
      currentStep = currentStep + 1;
    });
  }

  cancelStep() {
    if (currentStep < 0) {
      setState(() {
        currentStep = currentStep - 1;
      });
    }
  }

  onStepTapped(int value) {
    setState(() {
      currentStep = value;
    });
  }

  Widget controlsBuilder(context, details) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: details.onStepContinue,
          child: const Text("Next"),
        ),
        const SizedBox(width: 10),
        OutlinedButton(
          onPressed: details.onStepCancel,
          child: const Text(
            "Back",
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Row(
                    children: [
                      const AllNames(
                        name: "My Order",
                      ),
                      const SizedBox(width: 130),
                      Image.asset(
                        "assets/images/filtter.png",
                        height: 20,
                        width: 22,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 440,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFFFFF),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    "assets/images/order.png",
                                    height: 80,
                                    width: 80,
                                  ),
                                  const SizedBox(width: 15),
                                ],
                              ),
                              const SizedBox(width: 15),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    textAlign: TextAlign.start,
                                    "Order #90897 ",
                                    style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Poppins",
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    textAlign: TextAlign.start,
                                    "Placed on October 19 2021 ",
                                    style: TextStyle(
                                      color: Color(0xFF868889),
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Poppins",
                                      fontSize: 13,
                                    ),
                                  ),
                                  Text(
                                    textAlign: TextAlign.start,
                                    "Items: 10 Items: \$16.90",
                                    style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Poppins",
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 50, top: 20),
                                child: Image.asset(
                                  "assets/images/my card.png",
                                  height: 25,
                                  width: 25,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          const Divider(
                            height: 2,
                            color: Color(0xFFEBEBEB),
                            thickness: 2,
                          ),
                          SizedBox(height: 8),
                          Theme(
                            data: ThemeData(
                              canvasColor: Colors.yellow,
                              colorScheme: Theme.of(context).colorScheme.copyWith(
                                    primary: Colors.green,
                                    background: Colors.red,
                                    secondary: Colors.green,
                                  ),
                            ),
                            child: Stepper(
                              currentStep: currentStep,
                              onStepContinue: continueStep,
                              onStepCancel: cancelStep,
                              onStepTapped: onStepTapped,
                              controlsBuilder: controlsBuilder,
                              steps: [
                                Step(
                                  title: const Text(
                                    "Order placed",
                                  ),
                                  content: const Text(
                                    "",
                                    // "This is second step",
                                  ),
                                  isActive: currentStep >= 0,
                                ),
                                Step(
                                  title: const Text(
                                    "Order confirmed",
                                  ),
                                  content: const Text(
                                    "This is third step",
                                  ),
                                  isActive: currentStep >= 1,
                                ),
                                Step(
                                  title: const Text(
                                    "Order shipped",
                                  ),
                                  content: const Text(
                                    "This is forth step",
                                  ),
                                  isActive: currentStep >= 2,
                                ),
                                const Step(
                                  title: Text(
                                    "Order placed",
                                  ),
                                  content: Text(
                                    "This is fifth step",
                                  ),
                                ),
                              ],
                            ),
                          ),
                          OrderTracker(
                            status: Status.delivered,
                            activeColor: Colors.green,
                            inActiveColor: Colors.grey[300],
                            orderTitleAndDateList: Orderplaced,
                            shippedTitleAndDateList: Orderconfirmed,
                            outOfDeliveryTitleAndDateList: Ordershipped,
                            deliveredTitleAndDateList: Outfordelivery,
                            headingTitleStyle: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontFamily: "Poppins",
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    height: 110,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFFFFF),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    "assets/images/order.png",
                                    height: 80,
                                    width: 80,
                                  ),
                                  const SizedBox(width: 15),
                                ],
                              ),
                              const SizedBox(width: 15),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    textAlign: TextAlign.start,
                                    "Order #90897 ",
                                    style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Poppins",
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    textAlign: TextAlign.start,
                                    "Placed on October 19 2021 ",
                                    style: TextStyle(
                                      color: Color(0xFF868889),
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Poppins",
                                      fontSize: 13,
                                    ),
                                  ),
                                  Text(
                                    textAlign: TextAlign.start,
                                    "Items: 10 Items: \$16.90",
                                    style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Poppins",
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 50, top: 20),
                                child: Image.asset(
                                  "assets/images/my card.png",
                                  height: 25,
                                  width: 25,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    height: 148,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFFFFF),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    "assets/images/order.png",
                                    height: 80,
                                    width: 80,
                                  ),
                                  const SizedBox(width: 15),
                                ],
                              ),
                              const SizedBox(width: 15),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    textAlign: TextAlign.start,
                                    "Order #90897 ",
                                    style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Poppins",
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    textAlign: TextAlign.start,
                                    "Placed on October 19 2021 ",
                                    style: TextStyle(
                                      color: Color(0xFF868889),
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Poppins",
                                      fontSize: 13,
                                    ),
                                  ),
                                  Text(
                                    textAlign: TextAlign.start,
                                    "Items: 10 Items: \$16.90",
                                    style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Poppins",
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 50, top: 20),
                                child: Image.asset(
                                  "assets/images/my card.png",
                                  height: 25,
                                  width: 25,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          const Divider(
                            height: 2,
                            color: Color(0xFFEBEBEB),
                            thickness: 2,
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              Container(
                                height: 15,
                                width: 15,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFEBEBEB),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                              const SizedBox(width: 30),
                              const Text(
                                "Order Delivered",
                                style: TextStyle(
                                  color: Color(0xFF868889),
                                  fontSize: 14,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(width: 110),
                              const Text(
                                "Aug 29 2021",
                                style: TextStyle(
                                  color: Color(0xFF868889),
                                  fontSize: 14,
                                  fontFamily: "Poppins",
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    height: 148,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFFFFF),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    "assets/images/order.png",
                                    height: 80,
                                    width: 80,
                                  ),
                                  const SizedBox(width: 15),
                                ],
                              ),
                              const SizedBox(width: 15),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    textAlign: TextAlign.start,
                                    "Order #90897 ",
                                    style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Poppins",
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    textAlign: TextAlign.start,
                                    "Placed on October 19 2021 ",
                                    style: TextStyle(
                                      color: Color(0xFF868889),
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Poppins",
                                      fontSize: 13,
                                    ),
                                  ),
                                  Text(
                                    textAlign: TextAlign.start,
                                    "Items: 10 Items: \$16.90",
                                    style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Poppins",
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 50, top: 20),
                                child: Image.asset(
                                  "assets/images/my card.png",
                                  height: 25,
                                  width: 25,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          const Divider(
                            height: 2,
                            color: Color(0xFFEBEBEB),
                            thickness: 2,
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              Container(
                                height: 15,
                                width: 15,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFEBEBEB),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                              const SizedBox(width: 30),
                              const Text(
                                "Order Delivered",
                                style: TextStyle(
                                  color: Color(0xFF868889),
                                  fontSize: 14,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(width: 110),
                              const Text(
                                "Aug 29 2021",
                                style: TextStyle(
                                  color: Color(0xFF868889),
                                  fontSize: 14,
                                  fontFamily: "Poppins",
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
