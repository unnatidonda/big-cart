import 'package:flutter/material.dart';

import '../common/all_names.dart';

class MyOrder extends StatefulWidget {
  const MyOrder({super.key});

  @override
  State<MyOrder> createState() => _MyOrderState();
}

// int current_step = 0;
// List<Step> steps = [
//   Step(
//     title: Text('Step 1'),
//     content: Text('Hello!'),
//     isActive: true,
//   ),
//   Step(
//     title: Text('Step 2'),
//     content: Text('World!'),
//     isActive: true,
//   ),
//   Step(
//     title: Text('Step 3'),
//     content: Text('Hello World!'),
//     state: StepState.complete,
//     isActive: true,
//   ),
// ];

class _MyOrderState extends State<MyOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                width: 380,
                height: 294,
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
                      // Container(
                      //   child: Stepper(
                      //     // currentStep: this.current_step,
                      //     steps: steps,
                      //     type: StepperType.vertical,
                      //     onStepTapped: (step) {
                      //       setState(() {
                      //         current_step = step;
                      //       });
                      //     },
                      //     onStepContinue: () {
                      //       setState(() {
                      //         if (current_step < steps.length - 1) {
                      //           current_step = current_step + 1;
                      //         } else {
                      //           current_step = 0;
                      //         }
                      //       });
                      //     },
                      //     onStepCancel: () {
                      //       setState(() {
                      //         if (current_step > 0) {
                      //           current_step = current_step - 1;
                      //         } else {
                      //           current_step = 0;
                      //         }
                      //       });
                      //     },
                      //   ),
                      // ),
                    ],
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
