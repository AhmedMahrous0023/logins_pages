import 'package:flutter/material.dart';

class ButtonOfPage extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
   Color backgroundColor;
      Color foregroundColor;

   ButtonOfPage({super.key,required this.text,required this.onPressed,required this.backgroundColor,required this.foregroundColor});

  @override
  Widget build(BuildContext context) {
    return   Container(
                                                  width: MediaQuery.sizeOf(context).width * .7,
      child: ElevatedButton(
                            style: ButtonStyle(
                              
                                backgroundColor:
                                    MaterialStatePropertyAll(backgroundColor),
                                foregroundColor:
                                    MaterialStatePropertyAll(foregroundColor),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero,
                                        side: BorderSide(color: Colors.blue)))),
                            onPressed: onPressed,
                            child: Text(text)),
    );
  }
}