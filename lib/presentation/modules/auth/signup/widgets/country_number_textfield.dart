import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';

class CountryCodeTextField extends StatefulWidget {
  const CountryCodeTextField({Key? key}) : super(key: key);

  @override
  _CountryCodeTextFieldState createState() => _CountryCodeTextFieldState();
}

class _CountryCodeTextFieldState extends State<CountryCodeTextField> {
  String selectedCountryCode = '+92';
  String selectedFlagCode = 'PK';

  List<String> countryCodes = ['+92', '+1', '+91'];
  List<String> flagCodes = ['PK', 'US', 'IN'];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black54),
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black45,
            offset: Offset(1, 1),
            blurRadius: 5,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: CountryFlag.fromCountryCode(
                'pk',
                height: 20,
                width: 24,
                borderRadius: 8,
              ),
            ),
            const SizedBox(width: 10),
            Text(selectedFlagCode),
            const SizedBox(width: 10),
            DropdownButton<String>(
              value: selectedCountryCode,
              onChanged: (String? newValue) {
                setState(() {
                  selectedCountryCode = newValue!;
                  selectedFlagCode = flagCodes[countryCodes.indexOf(newValue)];
                });
              },
              items: countryCodes.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              underline: Container(),
            ),
            Expanded(
              child: TextFormField(
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                ),
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(15),
                  border: InputBorder.none,
                  hintText: 'Phone Number',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
