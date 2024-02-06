import 'package:flutter/material.dart';
import 'package:qr_code_scanner_and_generator_tutorial/pages/home.dart';
import 'package:qr_code_scanner_and_generator_tutorial/pages/name.dart';
import 'package:qr_code_scanner_and_generator_tutorial/pages/splash.dart';

import 'pages/generate_code_page.dart';
import 'pages/scan_code_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       iconTheme: const IconThemeData(
        color: Colors.white
       ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade400,),
        useMaterial3: true,
      ),
      routes: {
        "/generate": (context) => const GenerateCodePage(),
        "/scan": (context) => const ScanCodePage(),
        "/home":(context) => const homepage(),
        "/splash":(context) => const Splash(),
        "/name":(context) => const Name()
      },
      initialRoute: "/splash",
    );
  }
}
