import 'package:flutter/material.dart';
import 'package:login_pages/components/button_of_page.dart';
import 'package:login_pages/components/blue_container.dart';
import 'package:login_pages/components/white_container.dart';
import 'package:login_pages/screens/sign_in_screen.dart';
import 'package:login_pages/screens/sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  goSigninScreen (){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignInScreen()));
  }

  goSignupScreen(){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUpScreen()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
        backgroundColor: Colors.blue[50],
        body: Stack(
          children: [
            BlueContainer(height: 0.5,
            imageHeight: 0.01,
            imageWidth: 0.25,
           text: Text("APP ICON",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),),
            Align(
              alignment: Alignment.center,
              child: WhiteContainer(height: 0.4,width: 0.8,
               child:Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30, bottom: 10),
                          child: Text(
                            "Welcome to App Name",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        Text(
                          "Discover Amazing Thing Near Around You",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                         Padding(
                           padding: const EdgeInsets.only(top: 20),
                           child: ButtonOfPage(text: "Sign In", onPressed: goSigninScreen,backgroundColor: Colors.blue,foregroundColor:Colors.white ,),
                         ),
                          Padding(
                           padding: const EdgeInsets.only(top: 20),
                           child: ButtonOfPage(text: "Sign Up", onPressed: goSignupScreen,backgroundColor: Colors.white,foregroundColor:Colors.blue ,),
                         ),
                         SizedBox(
                  height: MediaQuery.sizeOf(context).height * .05,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * .05,
                    ),
                    Expanded(
                        child: Divider(
                      color: Colors.grey,
                    )),
                    Text("  Or connect using  "),
                    Expanded(
                        child: Divider(
                      color: Colors.grey,
                    )),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * .05,
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * .03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: MediaQuery.sizeOf(context).width * .1,
                        height: 20,
                        child: Image.asset(
                          "assets/images/face.png",
                          width: 20,
                          height: 20,
                        )),
                    Container(
                        width: MediaQuery.sizeOf(context).width * .1,
                        height: 20,
                        child: Image.asset(
                          "assets/images/new-Twitter-logo-x-black-png.png",
                          width: 20,
                          height: 20,
                        )),
                    Container(
                        width: MediaQuery.sizeOf(context).width * .1,
                        height: 20,
                        child: Image.asset(
                          "assets/images/google-logo.jpeg",
                          width: 20,
                          height: 20,
                        )),
                    Container(
                        width: MediaQuery.sizeOf(context).width * .1,
                        height: 20,
                        child: Image.asset(
                          "assets/images/mobile.png",
                          width: 20,
                          height: 20,
                        ),
                        ),
                      ],
                      ),
          ],
          ),
            ),
        ),
         Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 90),
              child: InkWell(
                  onTap: () {},
                  child: Text(
                    "SKIP",
                    style: TextStyle(
                        color: Colors.grey[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                  ),
            ),
        ),
        ],
        ),
        );
        }
}
          