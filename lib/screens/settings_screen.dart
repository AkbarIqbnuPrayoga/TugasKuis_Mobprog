import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/theme_font_provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeFontProvider = Provider.of<ThemeFontProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(fontFamily: themeFontProvider.font),
        ),
        backgroundColor: themeFontProvider.theme.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Select Theme:', style: TextStyle(fontSize: 18)),
            ...List.generate(
              3,
              (index) => RadioListTile(
                title: Text('Theme ${index + 1}'),
                value: index,
                groupValue: themeFontProvider.theme,
                onChanged: (value) {
                  themeFontProvider.updateTheme(index);
                },
              ),
            ),
            const SizedBox(height: 20),
            const Text('Select Font:', style: TextStyle(fontSize: 18)),
            ...List.generate(
              3,
              (index) => RadioListTile(
                title: Text('Font ${index + 1}'),
                value: index,
                groupValue: themeFontProvider.font,
                onChanged: (value) {
                  themeFontProvider.updateFont(index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
