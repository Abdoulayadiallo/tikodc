import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ParTelephonePage extends StatefulWidget {
  const ParTelephonePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ParTelephonePageState();
  }
}

Widget _buildDropdownItem(Country country) => Container(
      child: Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          SizedBox(
            width: 8.0,
          ),
          Text("+${country.phoneCode}(${country.isoCode})"),
        ],
      ),
    );

class ParTelephonePageState extends State<ParTelephonePage> {
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(
            child: CountryPickerDropdown(
              initialValue: 'ML',
              itemBuilder: _buildDropdownItem,
              priorityList: [
                CountryPickerUtils.getCountryByIsoCode('GB'),
                CountryPickerUtils.getCountryByIsoCode('CN'),
              ],
              sortComparator: (Country a, Country b) =>
                  a.isoCode.compareTo(b.isoCode),
              onValuePicked: (Country country) {
                print("${country.name}");
              },
            ),
          ),
          SizedBox(
            child: ElevatedButton(
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
              child: const Text('Inscrire'),
            ),
          ),
        ],
      ),
    );
  }
}
