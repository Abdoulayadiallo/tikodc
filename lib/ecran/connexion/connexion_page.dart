import 'package:flutter/material.dart';
import 'package:tikodc/ecran/connexion/par_email.dart';
import 'package:tikodc/ecran/connexion/par_telephone.dart';

class ConnexionPage extends StatelessWidget {
  const ConnexionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: const TabBar(
            indicatorColor: Colors.black,
            tabs: [
              Tab(
                text: 'Téléphone',
              ),
              Tab(
                text: 'Email',
              ),
            ],
          ),
          title: const Center(
              child: Text(
            'Connexion',
            style: TextStyle(color: Colors.black),
          )),
          actions: [
            // action button
            IconButton(
              icon: Icon(Icons.help_outline_rounded),
              color: Colors.grey,
              onPressed: () {},
            ),
          ],
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: const TabBarView(
          children: [
            ParTelephonePage(),
            ParEmailPage(),
          ],
        ),
      ),
    );
  }
}
