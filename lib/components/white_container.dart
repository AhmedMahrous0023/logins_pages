import 'package:flutter/material.dart';

class WhiteContainer extends StatelessWidget {
     final double? height;
     final Widget child ;

  const WhiteContainer({super.key,required this.height,required this.child});

  @override
  Widget build(BuildContext context) {
    return 
     Container(
                    height: MediaQuery.sizeOf(context).height * height!,
                    width: MediaQuery.sizeOf(context).width * .8,
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