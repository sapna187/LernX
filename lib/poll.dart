import 'package:flutter/material.dart';
import 'package:flutter_task/utils.dart';
import 'package:get/get.dart';

class AddPoll extends StatelessWidget {
  const AddPoll({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: background,
        // home page body
        body: Column(
          children: [
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.west_rounded, size: 27),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                  const SizedBox(width: 8),
                  CustomText("Create Poll", Colors.black87, 18, "MyFont",
                      FontWeight.w700),
                  const Spacer(),
                  RoundedMaterialButton(
                    onPressed: () {},
                    child: CustomText(
                        "Post", white, 18, "MyFont", FontWeight.w700),
                  ),
                ],
              ),
            ),
            const Divider(color: green, thickness: 1.5),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
              child: Column(
                children: [
                  TextFormField(
                    controller: null,
                    maxLines: 4, // Set maxLines to 3 for multiline text
                    autofocus: false,
                    keyboardType: TextInputType
                        .multiline, // Set keyboardType to multiline
                    decoration: InputDecoration(
                      fillColor: white,
                      filled: true,
                      contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                      hintText: "Ask your question", // Set the hint text
                      hintStyle: const TextStyle(
                        fontFamily: "MyFont",
                        color: black,
                        fontSize: 16,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(color: hint),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return ("Question can't be empty");
                      }
                      return null;
                    },
                    onSaved: (value) {},
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(height: 35),
                  TextFormField(
                    controller: null,
                    autofocus: false,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      fillColor: white,
                      filled: true,
                      contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                      hintText: "Option 1",
                      hintStyle: const TextStyle(
                          fontFamily: "MyFont", color: black, fontSize: 16),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(color: hint)),
                    ),
                    validator: (value) {
                      RegExp regex = RegExp(r'^.{3,}$');
                      if (value!.isEmpty) {
                        return ("First name can't be empty");
                      }
                      if (!regex.hasMatch(value)) {
                        return ("Please enter a valid Name (min 3 char)");
                      }
                      return null;
                    },
                    onSaved: (value) {},
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: null,
                    autofocus: false,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      fillColor: white,
                      filled: true,
                      contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                      hintText: "Add Option",
                      hintStyle: const TextStyle(
                          fontFamily: "MyFont", color: hint, fontSize: 16),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(color: hint)),
                    ),
                    validator: (value) {
                      RegExp regex = RegExp(r'^.{3,}$');
                      if (value!.isEmpty) {
                        return ("Option can't be empty");
                      }
                      if (!regex.hasMatch(value)) {
                        return ("Please enter a valid Option (min 3 char)");
                      }
                      return null;
                    },
                    onSaved: (value) {},
                    textInputAction: TextInputAction.next,
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

class RoundedMaterialButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;

  const RoundedMaterialButton(
      {super.key, required this.onPressed, required this.child});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: green,
      textColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: child,
      ),
    );
  }
}
