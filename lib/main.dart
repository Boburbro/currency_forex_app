import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'presentation/screens/dark_home.dart';
import 'presentation/screens/light_home.dart';
import 'presentation/theme.dart';

void main(List<String> args) {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  bool isDark(BuildContext context) {
    return context.read<ThemeProvider>().themeData.brightness ==
        Brightness.dark;
  }

  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeProvider>().themeData;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: isDark(context) ? const DarkHome() : HomePage(),
    );
  }
}
