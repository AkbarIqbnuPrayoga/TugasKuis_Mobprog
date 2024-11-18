import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/theme_font_provider.dart';
import 'screens/main_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeFontProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeFontProvider = Provider.of<ThemeFontProvider>(context);

    return MaterialApp(
      title: 'Multi-Theme & Multi-Font App',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: themeFontProvider.theme.primaryColor,
        scaffoldBackgroundColor: themeFontProvider.theme.scaffoldBackgroundColor, // Perbaikan di sini
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontFamily: themeFontProvider.font),
          bodyMedium: TextStyle(fontFamily: themeFontProvider.font),
        ),
      ),
      home: const MainScreen(),
    );
  }
}
