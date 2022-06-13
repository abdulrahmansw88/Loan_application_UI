import 'package:flutter/material.dart';
import 'package:mis_chelitos/utils/colors.dart';
class AppButton extends StatelessWidget {
   AppButton({Key? key, this.text = '', this.height = 45.0, this.width = 70.0,  required this.onPressed }) : super(key: key);
  String text;
  double height, width;
  Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MaterialButton(
        height: height,
         minWidth: width,
          onPressed: onPressed,
        color: primaryColor,
        child:  Text(text, style: const TextStyle(color: Colors.white, fontSize: 18)),
        elevation: 6.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
    );
  }
}
