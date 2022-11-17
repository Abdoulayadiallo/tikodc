import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';

class ParTelephonePage extends StatefulWidget {
  const ParTelephonePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ParTelephonePageState();
  }
}

class ParTelephonePageState extends State<ParTelephonePage> {
// Create a global key that uniquely identifies the Form widget
// and allows validation of the form.
//
// Note: This is a `GlobalKey<FormState>`,
// not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
  final countryPicker = const FlCountryCodePicker();
  final TextEditingController phoneNumberController = TextEditingController();
  CountryCode? countryCode;
  @override
  Widget build(BuildContext context) {
// Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(10.0),
              child: TextFormField(
                controller: phoneNumberController,
                cursorColor: Colors.red,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
                maxLines: 1,
                onChanged: (text) {
                  print('First text field: $text');
                },
                // The validator receives the text that the user has entered.

                decoration: InputDecoration(
                  hintText: "Numero",
                  focusColor: Colors.red,
                  border: UnderlineInputBorder(),
                  prefixIcon: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        GestureDetector(
                          onTap: () async {
                            final code = await countryPicker.showPicker(
                                context: context);
                            setState(() {
                              countryCode = code;
                            });
                          },
                          child: Row(
                            children: [
                              Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 6),
                                  child: Text(
                                    countryCode?.dialCode ?? "+223",
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Saisis un numéro de telephone valide';
                  }
                  return null;
                },
                // Clavier type email
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
                child: const Text('Envoyer un code'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
