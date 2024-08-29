import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shirinim/blocs/auth/auth_bloc.dart';
import 'package:shirinim/core/core.dart';
import 'package:shirinim/core/di/di.dart';
import 'package:shirinim/data/repositories/auth_repository.dart';
import 'package:shirinim/data/repositories/user_repository.dart';
import 'package:shirinim/ui/screens/screens.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dependencyInit();
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
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AuthBloc(
              authRepository: getIt.get<AuthRepository>(),
              userRepository: getIt.get<UserRepository>(),
            ),
          ),
        ],
        child: MaterialApp(
          title: 'Shirinim',
          debugShowCheckedModeBanner: false,
          theme: Themes.light,
          home: const WelcomeScreen(),
        ),
      ),
    );
  }
}
