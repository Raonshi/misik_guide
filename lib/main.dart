import 'package:flutter/material.dart';
import 'package:misik_guide/pages/auth/sign_in_page.dart';
import 'package:misik_guide/styles/theme.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MiSik Guide",
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeMode,
      home: const SignInPage(),
    );
  }
}
