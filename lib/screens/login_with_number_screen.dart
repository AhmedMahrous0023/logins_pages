import 'package:flutter/material.dart';
import 'package:login_pages/components/blue_container.dart';
import 'package:login_pages/components/button_of_page.dart';
import 'package:login_pages/components/otp_text_field.dart';
import 'package:login_pages/components/text_field_input.dart';
import 'package:login_pages/components/white_container.dart';

class LoginWithNumber extends StatefulWidget {
  const LoginWithNumber({super.key});

  @override
  State<LoginWithNumber> createState() => _LoginWithNumberState();
}

class _LoginWithNumberState extends State<LoginWithNumber> {
  TextEditingController _mobileNumberController =TextEditingController();   
    TextEditingController _controller1 =TextEditingController();  
        TextEditingController _controller2 =TextEditingController();   
    TextEditingController _controller3 =TextEditingController();   
    TextEditingController _controller4 =TextEditingController();   
    TextEditingController _controller5 =TextEditingController();   
    TextEditingController _controller6 =TextEditingController();   
 

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
                  height: MediaQuery.sizeOf(context).height * .1,
                  width: MediaQuery.sizeOf(context).width * .8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, bottom: 5),
                        child: Text(
                          "Login with number",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "Your number will safe with us. we wont share \n your details with anyone",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              )),
          Positioned(
            bottom: 295,
            left: 50,
            child: Align(
              alignment: Alignment.center,
              child: WhiteContainer(
                height: 0.33,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextFieldInput(
                        controller: _mobileNumberController,
                        hintText: "Enter your mobile number",
                        prefixIcon: Icon(Icons.mobile_friendly)),
                        Container(
                             padding: const EdgeInsets.only(right:25.0,left: 25,top: 25),

                                  height: MediaQuery.sizeOf(context).height*0.08,
                          child: Row(
                            children: [
                              SizedBox(width: MediaQuery.sizeOf(context).width*0.02,),
                              Expanded(child: OtpTextField(controller:_controller1 ,)),
                                                            SizedBox(width: MediaQuery.sizeOf(context).width*0.02,),

                                                            Expanded(child: OtpTextField(controller: _controller2,)),
                                                                                          SizedBox(width: MediaQuery.sizeOf(context).width*0.02,),

                              Expanded(child: OtpTextField(controller: _controller3,)),
                                                            SizedBox(width: MediaQuery.sizeOf(context).width*0.02,),

                              Expanded(child: OtpTextField(controller: _controller4,)),
                                                            SizedBox(width: MediaQuery.sizeOf(context).width*0.02,),

                              Expanded(child: OtpTextField(controller: _controller5,)),
                                                            SizedBox(width: MediaQuery.sizeOf(context).width*0.02,),

                              Expanded(child: OtpTextField(controller: _controller6,)),
                                                            SizedBox(width: MediaQuery.sizeOf(context).width*0.02,),


                            ],
                          ),
                        ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40,),
                      child: ButtonOfPage(
                        text: "Next",
                        onPressed: () {},
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10,left: 85),
                        child: Row(
                          children: [
                            Text(
                              "Not received Code ?",
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Text(
                                "Resend",
                                style:
                                    TextStyle(fontSize: 13, color: Colors.blue),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
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
