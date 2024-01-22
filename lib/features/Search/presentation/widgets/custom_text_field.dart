import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextField(
      decoration: InputDecoration(
        enabledBorder: buildOutLIneInputBorder(),
        focusedBorder: buildOutLIneInputBorder(),
        hintText: 'Search',
        focusColor: Colors.blue,
        suffixIcon: IconButton(onPressed: () {
        }, icon: const Icon(FontAwesomeIcons.magnifyingGlass,size: 22,)),
      ),
    );
  }

  OutlineInputBorder buildOutLIneInputBorder() {
    return OutlineInputBorder(
        borderSide:  BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(15),
      );
  }
}
