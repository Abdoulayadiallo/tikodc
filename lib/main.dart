import 'package:flutter/material.dart';
import 'package:tikodc/ecran/accueil.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: 'odkToc',
      debugShowCheckedModeBanner: false,
      home: const Accueil(),
    );
  }
}
