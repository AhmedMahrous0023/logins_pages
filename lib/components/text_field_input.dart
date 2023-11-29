import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final TextEditingController controller ;
   final String hintText ;
   final Widget prefixIcon ;
   final Widget? suffix ;
   final bool obscureText ;
  const TextFieldInput({super.key,required this.controller,required this.hintText,required this.prefixIcon,this.suffix,required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:25.0,left: 25,top: 25),
      child: Container(
        height: MediaQuery.sizeOf(context).height*0.06,
        child: TextField(
          controller:controller ,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.zero
            ),
            fillColor: Colors.grey[200],
            filled: true,
            prefixIcon: prefixIcon,
            suffix: suffix,
            hintText: hintText,
            prefixIconColor: Colors.grey[600],
            hintStyle: TextStyle(color: Colors.grey,fontSize: 15)
          ),
          obscureText: obscureText,
        ),
      ),
    );
  }
}