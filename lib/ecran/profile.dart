import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'profile',
          ),
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Icon(
                Icons.person_outline,
                color: Colors.grey,
                size: 100.0,
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Text(
                "Sign up for an account",
                style: TextStyle(
                  color: Colors.black87,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              SizedBox(
                width: 200.0,
                child: Builder(
                  builder: (context) => ElevatedButton(
                    onPressed: () {
                      _openPopup(context);
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.red[400]),
                    ),
                    child: const Text("Sign Up"),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}

void _openPopup(context) {
  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (BuildContext bc) {
        return Container(
          height: MediaQuery.of(context).size.height * .90,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Column(
                children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: const Icon(
                            Icons.close,
                          ),
                        ),
                        const Icon(
                          Icons.more,
                        )
                      ]),
                  const SizedBox(
                    height: 50.0,
                  ),
                  const Text(
                    'Inscrit toi sur TikODC',
                    style: TextStyle(fontSize: 25.0),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  const Text(
                    'Crée un profil ,suis d’autres comptes, crée tes propres vidéos et bien plus encore.',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black54,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  ButtonTheme(
                    minWidth: 250.0,
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        primary: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Expanded(
                                flex: 1,
                                child: FaIcon(
                                  FontAwesomeIcons.user,
                                  color: Colors.black,
                                )),
                            Expanded(
                              flex: 4,
                              child: Text(
                                'Téléphone/E-mail/nom d’utilisateur',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  ButtonTheme(
                    minWidth: 250.0,
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        primary: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Expanded(
                                flex: 1,
                                child: FaIcon(
                                  FontAwesomeIcons.facebook,
                                  color: Colors.blue,
                                )),
                            Expanded(
                              flex: 2,
                              child: Text(
                                'Continuer avec Facebook',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  ButtonTheme(
                    minWidth: 250.0,
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        primary: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Expanded(
                                flex: 1,
                                child: FaIcon(
                                  FontAwesomeIcons.google,
                                  color: Colors.red,
                                )),
                            Expanded(
                              flex: 2,
                              child: Text(
                                'Continuer avec Google',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  ButtonTheme(
                    minWidth: 300.0,
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        primary: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Expanded(
                                flex: 1,
                                child: FaIcon(
                                  FontAwesomeIcons.twitter,
                                  color: Colors.lightBlue,
                                )),
                            Expanded(
                              flex: 2,
                              child: Text(
                                'Continuer avec Twitter',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  ButtonTheme(
                    minWidth: 250.0,
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        primary: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Expanded(
                                flex: 1,
                                child: FaIcon(
                                  FontAwesomeIcons.instagram,
                                  color: Colors.redAccent,
                                )),
                            Expanded(
                              flex: 2,
                              child: Text(
                                'Continuer avec Instagram',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 60.0,
                  ),
                  ButtonTheme(
                    child: ElevatedButton(
                      onPressed: () => {_openConnexion(context)},
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        primary: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Expanded(
                              child: Text(
                                'En continuant,tu acceptes nos Conditions d’utilisation et reconnais avoir lu notre Politique de confidantialité pour savoir comment nous collectons, utilisons et partageons tes donnée',
                                style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  ButtonTheme(
                    minWidth: 250.0,
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        primary: Colors.red[50],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30, 10, 0, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Expanded(
                              flex: 1,
                              child: Text(
                                "Tu as déjà un compte ? ",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                'Connexion',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                ],
              ),
            ),
          ),
        );
      });
}

void _openConnexion(context) {
  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (BuildContext bc) {
        return Container(
          height: MediaQuery.of(context).size.height * .90,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Column(
                children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: const Icon(
                            Icons.close,
                          ),
                        ),
                        const Icon(
                          Icons.more,
                        )
                      ]),
                  const SizedBox(
                    height: 50.0,
                  ),
                  const Text(
                    'Inscrit toi sur TikODC',
                    style: TextStyle(fontSize: 25.0),
                  ),
                  const SizedBox(height: 15.0),
                  const Text(
                    'Crée un profil ,suis d’autres comptes, crée tes propres vidéos et bien plus encore.',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black54,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  ButtonTheme(
                    minWidth: 250.0,
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        primary: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Expanded(
                                flex: 1,
                                child: FaIcon(
                                  FontAwesomeIcons.user,
                                  color: Colors.black,
                                )),
                            Expanded(
                              flex: 4,
                              child: Text(
                                'Téléphone/E-mail/nom d’utilisateur',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  ButtonTheme(
                    minWidth: 250.0,
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        primary: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Expanded(
                                flex: 1,
                                child: FaIcon(
                                  FontAwesomeIcons.facebook,
                                  color: Colors.blue,
                                )),
                            Expanded(
                              flex: 2,
                              child: Text(
                                'Continuer avec Facebook',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  ButtonTheme(
                    minWidth: 250.0,
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        primary: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Expanded(
                                flex: 1,
                                child: FaIcon(
                                  FontAwesomeIcons.google,
                                  color: Colors.red,
                                )),
                            Expanded(
                              flex: 2,
                              child: Text(
                                'Continuer avec Google',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  ButtonTheme(
                    minWidth: 250.0,
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        backgroundColor: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Expanded(
                                flex: 1,
                                child: FaIcon(
                                  FontAwesomeIcons.twitter,
                                  color: Colors.lightBlue,
                                )),
                            Expanded(
                              flex: 2,
                              child: Text(
                                'Continuer avec Twitter',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  ButtonTheme(
                    minWidth: 250.0,
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        primary: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Expanded(
                                flex: 1,
                                child: FaIcon(
                                  FontAwesomeIcons.instagram,
                                  color: Colors.redAccent,
                                )),
                            Expanded(
                              flex: 2,
                              child: Text(
                                'Continuer avec Instagram',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 80.0,
                  ),
                  ButtonTheme(
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        primary: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Expanded(
                              child: Text(
                                'En continuant,tu acceptes nos Conditions d’utilisation et reconnais avoir lu notre Politique de confidantialité pour savoir comment nous collectons, utilisons et partageons tes donnée',
                                style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  ButtonTheme(
                    minWidth: 250.0,
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        primary: Colors.red[50],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30, 10, 0, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Expanded(
                              flex: 1,
                              child: Text(
                                "Tu n'a pas de compte ? ",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                'Inscription',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                ],
              ),
            ),
          ),
        );
      });
}
