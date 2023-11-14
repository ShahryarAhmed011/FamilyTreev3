import 'package:flutter/material.dart';

class CountryCodeTextField extends StatefulWidget {
  const CountryCodeTextField({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CountryCodeTextFieldState createState() => _CountryCodeTextFieldState();
}

class _CountryCodeTextFieldState extends State<CountryCodeTextField> {
  String selectedCountryCode = '+92'; // Default country code

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(0, 0, 5, 1),
          child: const Text(
            'PK',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0x7f000000),
            ),
          ),
        ),
        const SizedBox(width: 8),
        DropdownButton<String>(
          value: selectedCountryCode,
          onChanged: (String? newValue) {
            setState(() {
              selectedCountryCode = newValue!;
            });
          },
          items: [
            '+92',
            '+1',
            '+91',

          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Container(
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
            child: const TextField(
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(15),
                border: InputBorder.none,
                hintText: 'Phone Number',
                suffixIcon: Icon(Icons.phone),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
