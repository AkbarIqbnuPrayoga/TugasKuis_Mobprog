import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/theme_font_provider.dart';
import 'settings_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeFontProvider = Provider.of<ThemeFontProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Main Screen',
          style: TextStyle(fontFamily: themeFontProvider.font),
        ),
        backgroundColor: themeFontProvider.theme.primaryColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello, Welcome to Page',
              style: TextStyle(fontSize: 24, fontFamily: themeFontProvider.font),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const SettingsScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: themeFontProvider.theme.primaryColor,
              ),
              child: Text(
                'Go to Settings',
                style: TextStyle(fontFamily: themeFontProvider.font),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
