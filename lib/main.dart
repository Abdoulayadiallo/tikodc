import 'package:flutter/material.dart';
import 'package:tikodc/ecran/accueil.dart';

void main() {
  runApp(app());
}

class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OdkToc',
      debugShowCheckedModeBanner: false,
      home: accueil(),
    );
  }
}
