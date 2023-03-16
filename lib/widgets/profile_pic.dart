import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(top: 40, start: 16),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(70),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.8),
              spreadRadius: 4,
              blurRadius: 10,
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(70),
          child: Image.asset(
            "assets/images/profile.jpeg",
            height: 130,
            width: 130,
          ),
        ),
      ),
    );
  }
}
