import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shirinim/core/core.dart';

class LoginStartScreen extends StatelessWidget {
  const LoginStartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 0.7.sh,
            width: 1.sw,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  Images.loginBg,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
