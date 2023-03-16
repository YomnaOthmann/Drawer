import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.feedbackController});
  final TextEditingController feedbackController;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Material(
        borderRadius: BorderRadius.circular(10),
        elevation: 10,
        child: TextField(
          controller: feedbackController,
          maxLines: 3,
          decoration: const InputDecoration(
            hintText: "Enter your feedback...",
            hintStyle: TextStyle(
                wordSpacing: 4,
                fontSize: 18,
                color: Colors.grey,
                fontWeight: FontWeight.bold),
            border: OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
              color: Colors.transparent,
            )),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
              color: Colors.transparent,
            )),
          ),
        ),
      ),
    );
  }
}
