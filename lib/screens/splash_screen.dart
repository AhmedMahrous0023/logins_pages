
import 'package:flutter/material.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        decoration:BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/splash_image.jpg"),fit: BoxFit.cover
          )
        ) ,
        child: Padding(
          padding: const EdgeInsets.only(left: 18,bottom: 8,),
          child: Center(child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor:MaterialStatePropertyAll(Colors.indigo),
              foregroundColor: MaterialStatePropertyAll(Colors.white)
            ),
            onPressed: (){}, child: Text("let's Start"),
            ),
            ),
        ),
      ),
    );
  }
}