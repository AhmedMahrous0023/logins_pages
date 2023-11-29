import 'package:flutter/material.dart';
import 'package:login_pages/components/blue_container.dart';
import 'package:login_pages/components/button_of_page.dart';
import 'package:login_pages/components/text_field_input.dart';
import 'package:login_pages/components/white_container.dart';
import 'package:login_pages/screens/find_your_account_screen.dart';
import 'package:login_pages/screens/login_with_number_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _emailController =TextEditingController();
    TextEditingController _passwordController =TextEditingController();

    goLoginWithNumberPage (){
       Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginWithNumber()));
    }

    goFindYourAccountPage (){
             Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FindYourAccountScreen()));

    }


@override
  void dispose() {
_emailController ;
_passwordController ;
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,),
      backgroundColor: Colors.blue[50],
      body: Stack(
        children: [
          BlueContainer(
            height: 0.5,
            imageHeight: 0.0009,
            imageWidth: 0.17,
            text: Align(alignment: Alignment.topLeft,
              child: Container(
                height: MediaQuery.sizeOf(context).height*.1,
                width: MediaQuery.sizeOf(context).width*.8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(left: 15,bottom: 5),
                      child: Text("Sign In",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text("Sign in to discover amazing things near \n around you",style: TextStyle(color: Colors.white),),
                    )
                  ],
                ),
              ),
            )
          ),
          Positioned(
            bottom: 295,
            left: 50,
            child: Align(
              alignment: Alignment.center,
              child: WhiteContainer(
                width: 0.8,
                height: 0.35,
                child: Column(
                  children: [
                  
                    TextFieldInput(obscureText: false,
                        controller: _emailController,
                        hintText: "Email",
                        prefixIcon: Icon(Icons.email_sharp)),
                    TextFieldInput(obscureText: true,
                        controller: _passwordController,
                        hintText: "Password",
                        prefixIcon: Icon(Icons.lock)),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: ButtonOfPage(
                        text: "Sign In",
                        onPressed: () {},
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                      ),
                    ),
                    Center(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 25, right: 5, top: 35),
                      child: InkWell(
                        onTap: goFindYourAccountPage,
                        child: Text(
                          "Forgot Password",
                          style: TextStyle(fontSize: 13,color: Colors.blue),
                        ),
                      ),
                    ))
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 70, top: 30),
              child: Container(
                height: MediaQuery.sizeOf(context).height * .4,
                child: Row(
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
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * .03,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 160),
              child: Container(
                height: MediaQuery.sizeOf(context).height * .06,
                width: MediaQuery.sizeOf(context).width * .6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.white,
                ),
                child: Row(
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
                    InkWell(
                      onTap: goLoginWithNumberPage,
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * .1,
                        height: 20,
                        child: Image.asset(
                          "assets/images/mobile.png",
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30),
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
          )
        ],
      ),
    );
  }
}