import 'package:flutter/material.dart';
import 'package:tikodc/ecran/par_email.dart';
import 'package:tikodc/ecran/par_telephone.dart';

class InscriptionPage extends StatelessWidget {
  const InscriptionPage({Key? key}) : super(key: key);

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
            'Inscription',
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
