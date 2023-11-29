import 'package:flutter/material.dart';

class WhiteContainer extends StatelessWidget {
     final double? height;
     final Widget child ;
          final double? width;


  const WhiteContainer({super.key,required this.height,required this.child,required this.width});

  @override
  Widget build(BuildContext context) {
    return 
     Container(
                    height: MediaQuery.sizeOf(context).height * height!,
                    width: MediaQuery.sizeOf(context).width * width!,
                    child: child,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30)),
                            ),
                            );
  }
}