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
        appBar: AppBar(
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
          title: Center(child: Text('Inscription')),
          actions: [
            // action button
            IconButton(
              icon: Icon(Icons.question_mark_outlined),
              onPressed: () {},
            ),
          ],
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
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
