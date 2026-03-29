import 'package:flutter/material.dart';
import 'package:light_dark_theme_app/provider/theme_changer_provider.dart';
import 'package:provider/provider.dart';

class ThemeChangerScreen extends StatefulWidget {
  const ThemeChangerScreen({super.key});

  @override
  State<ThemeChangerScreen> createState() => _ThemeChangerScreenState();
}

class _ThemeChangerScreenState extends State<ThemeChangerScreen> {
  @override
  Widget build(BuildContext context) {
    print("Build");
    return Scaffold(
      body: Center(
        child: Consumer<ThemeChangerProvider>(
          builder: (context, value, child) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  context.read<ThemeChangerProvider>().setmode(0);
                },
                child: Text("Light Mode"),
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<ThemeChangerProvider>().setmode(1);
                },
                child: Text("Dark Mode"),
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<ThemeChangerProvider>().setmode(3);
                },
                child: Text("System"),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(title: Text('Theme Changer App')),
    );
  }
}
