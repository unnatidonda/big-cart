import 'package:flutter/material.dart';

import '../common/all_names.dart';

class MyOrder extends StatefulWidget {
  const MyOrder({super.key});

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
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
        SizedBox(width: 10),
        OutlinedButton(
          onPressed: details.onStepCancel,
          child: Text(
            "Back",
          ),
        ),
      ],
    );
  }

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
                height: 500,
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
                              title: Text(
                                "Order placed",
                              ),
                              content: Text(
                                "",
                                // "This is second step",
                              ),
                              isActive: currentStep >= 0,
                            ),
                            Step(
                              title: Text(
                                "Order confirmed",
                              ),
                              content: Text(
                                "This is third step",
                              ),
                              isActive: currentStep >= 1,
                            ),
                            Step(
                              title: Text(
                                "Order shipped",
                              ),
                              content: Text(
                                "This is forth step",
                              ),
                              isActive: currentStep >= 2,
                            ),
                            Step(
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
