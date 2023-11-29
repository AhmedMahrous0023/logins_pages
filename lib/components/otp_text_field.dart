import 'package:flutter/material.dart';

class OtpTextField extends StatelessWidget {
  final TextEditingController controller ;
  const OtpTextField({super.key,required this.controller,});

  @override
  Widget build(BuildContext context) {
    return TextField(
          controller:controller ,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.zero
            ),
            fillColor: Colors.grey[200],
            filled: true,
            hintText: ".",
            
            prefixIconColor: Colors.grey[600],
            
            hintStyle: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold)
          ),
        );
  }
}
