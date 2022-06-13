import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
   AppTextField({Key? key, this.labelText ='',}) : super(key: key);
  final String?  labelText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: labelText,
          border:OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
          )

        ),
      ),
    );
  }
}
