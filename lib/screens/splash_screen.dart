
import 'package:flutter/material.dart';
import 'package:login_pages/screens/login_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startScreens (){
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => LoginScreen()));
  }
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
            onPressed: startScreens, child: Text("let's Start"),
            ),
            ),
        ),
      ),
    );
  }
}