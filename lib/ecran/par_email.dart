import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ParEmailPage extends StatefulWidget {
  const ParEmailPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ParEmailPageState();
  }
}

class ParEmailPageState extends State<ParEmailPage> {
// Create a global key that uniquely identifies the Form widget
// and allows validation of the form.
//
// Note: This is a `GlobalKey<FormState>`,
// not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
// Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 350,
              padding: EdgeInsets.all(10.0),
              child: TextFormField(
                cursorColor: Colors.red,
                onChanged: (text) {
                  print('First text field: $text');
                },
                // The validator receives the text that the user has entered.

                decoration: const InputDecoration(
                  focusColor: Colors.red,
                  border: UnderlineInputBorder(),
                  hintText: 'Adresse e-mail',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Saisis une adresse e-mail valide';
                  }
                  return null;
                },
                // Clavier type email
                keyboardType: TextInputType.emailAddress,
                //Permettre type nombre seulement
                /*inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                ],*/
              ),
            ),
            Container(
              width: 350,
              padding: EdgeInsets.all(10.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red[400]),
                ),
                onPressed: () {
                  // Validate returns true if the form is valid, or false otherwise.
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
                child: const Text('Suivant'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
