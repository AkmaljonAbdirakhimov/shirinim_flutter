import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shirinim/core/core.dart';
import 'package:shirinim/ui/screens/screens.dart';

void main() async {
  // final formData = FormData.fromMap({
  //   "name": "Alijon",
  //   "photo": MultipartFile.fromFile(filePath),
  // });
  final dio = Dio();
  final response = await dio.get(
    "http://recipe.flutterwithakmaljon.uz/api/user",
    options: Options(
      headers: {
        "Authorization": "Bearer 7|ApZrw26MkqRSF5dWV3DgDEk9A6CZJ7H7RKmnPPIG9398e10e"
      },
    ),
  );

  print(response.data);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      splitScreenMode: true,
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Shirinim',
        debugShowCheckedModeBanner: false,
        theme: Themes.light,
        home: const WelcomeScreen(),
      ),
    );
  }
}
