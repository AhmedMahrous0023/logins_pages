import 'package:flutter/material.dart';
import 'package:login_pages/components/blue_container.dart';
import 'package:login_pages/components/button_of_page.dart';
import 'package:login_pages/components/white_container.dart';
import 'package:login_pages/screens/login_screen.dart';

class PasswordChangedSuccessfuly extends StatefulWidget {
  const PasswordChangedSuccessfuly({super.key});

  @override
  State<PasswordChangedSuccessfuly> createState() => _PasswordChangedSuccessfulyState();
}

class _PasswordChangedSuccessfulyState extends State<PasswordChangedSuccessfuly> {
  backLoginPage (){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Stack(
        children: [
          BlueContainer(
              height: 0.5,
              imageHeight: 0.0002,
              imageWidth: 0.17,
              text: Align(
                alignment: Alignment.center,
                child: Container(
                  height: MediaQuery.sizeOf(context).height * .3,
                  width: MediaQuery.sizeOf(context).width * .9,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              )),
          Align(
            alignment: Alignment.center,
            child: Container(margin: EdgeInsets.only(top: 90),
              child: WhiteContainer(
                width: 0.9,
                height: 0.6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Text("Password Changed",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold,fontSize: 20),),
                    ),
                    Text(
                        "Congratulations!! You have Successfully\n changed your password",style: TextStyle(fontSize: 17),),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                          height: MediaQuery.sizeOf(context).height * .31,
                          width: MediaQuery.sizeOf(context).width * .8,
                          child: Expanded(
                              child: Image.asset(
                                  "assets/images/13770094-3d-check-mark-symbol.jpg",fit: BoxFit.cover,))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: ButtonOfPage(
                          text: "Back to Login",
                          onPressed: backLoginPage,
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
