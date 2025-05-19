import 'package:flutter/material.dart';
import 'package:gespark/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
			theme: ThemeData(
				colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
				useMaterial3: true,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.deepPurple),
            foregroundColor: WidgetStatePropertyAll(Colors.white),
            textStyle: WidgetStatePropertyAll(
              TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            elevation: WidgetStatePropertyAll(5),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
            ),
          ),
        ),

        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(),
          labelStyle: TextStyle(
            color: Colors.deepPurple,
          ),
          hintStyle: TextStyle(
            color: Colors.grey,
          ),
        ),
			),

			home: const HomePage(title: 'Accueil'),
    );
  }
}
