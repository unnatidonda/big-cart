import 'package:flutter/material.dart';

class TextFromFiledScreen extends StatefulWidget {
  const TextFromFiledScreen({super.key});

  @override
  State<TextFromFiledScreen> createState() => _TextFromFiledScreenState();
}

class _TextFromFiledScreenState extends State<TextFromFiledScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: nameController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.name,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "please enter name.";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  hintText: "Enter emil",
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: emailController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.name,
                validator: (value) {
                  if (RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value!)) {
                    return "please enter right Email";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  hintText: "Enter password",
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: passwordController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.name,
                validator: (value) {
                  if (value != "123456") {
                    return "please enter right password.";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  hintText: "Enter name",
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      debugPrint("Is valid");
                    } else {
                      debugPrint("Is not valid");
                    }
                  },
                  child: const Text(
                    "submit",
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
