import 'package:flutter/material.dart';
import 'package:login_pages/components/blue_container.dart';
import 'package:login_pages/components/button_of_page.dart';
import 'package:login_pages/components/text_field_input.dart';
import 'package:login_pages/components/white_container.dart';

class FindYourAccountScreen extends StatefulWidget {
  const FindYourAccountScreen({super.key});

  @override
  State<FindYourAccountScreen> createState() => _FindYourAccountScreenState();
}

class _FindYourAccountScreenState extends State<FindYourAccountScreen> {
  TextEditingController _emailController =TextEditingController();   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Stack(
        children: [
          BlueContainer(
              height: 0.5,
              imageHeight: 0.0009,
              imageWidth: 0.17,
              text: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: MediaQuery.sizeOf(context).height * .3,
                  width: MediaQuery.sizeOf(context).width * .9,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, bottom: 5),
                        child: Text(
                          "Find Your account",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "Please enter your email address of phone number\n to search for your account",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              )),
          Align(
            alignment: Alignment.center,
            child: WhiteContainer(
              height: 0.23,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextFieldInput(
                      controller: _emailController,
                      hintText: "Email",
                      prefixIcon: Icon(Icons.email)),
                  Padding(
                    padding: const EdgeInsets.only(top: 25,),
                    child: ButtonOfPage(
                      text: "Search",
                      onPressed: () {},
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
                  ],
                ),
              );
  }
}
