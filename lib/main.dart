import 'package:flutter/material.dart';
import 'package:light_dark_theme_app/provider/theme_changer_provider.dart';
import 'package:light_dark_theme_app/screens/theme_changer_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    print("Main reBuild");
    return ChangeNotifierProvider(
      create: (context) => ThemeChangerProvider(),
      child: Builder(
        builder: (context) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData.light(),
            themeMode: Provider.of<ThemeChangerProvider>(context).theme,
            darkTheme: ThemeData(brightness: Brightness.dark),
            home: ThemeChangerScreen(),
          );
        },
      ),
    );
  }
}
