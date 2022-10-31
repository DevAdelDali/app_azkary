import 'package:app_azkar/Screens/Screen1.dart';
import 'package:app_azkar/Screens/Screen2.dart';
import 'package:app_azkar/Screens/Screen3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          "/screen1": (context) => const Screen1_Launcher(),
          "/screen2": (context) => const Screen2_Home(),
          "/screen3": (context) => const Screen3_Info(),
        },
        
        localizationsDelegates: const [
          
          GlobalWidgetsLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate
        ],

        supportedLocales:const  [
          Locale("en"),
          Locale("ar"),
        ],
        locale: Locale("ar"),
        home: Screen1_Launcher());
  }
}
