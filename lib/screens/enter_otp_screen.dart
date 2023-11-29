import 'package:flutter/material.dart';
import 'package:login_pages/components/blue_container.dart';
import 'package:login_pages/components/button_of_page.dart';
import 'package:login_pages/components/otp_text_field.dart';
import 'package:login_pages/components/white_container.dart';
import 'package:login_pages/screens/create_new_password_screen.dart';

class EnterOtpScreen extends StatefulWidget {
  const EnterOtpScreen({super.key});

  @override
  State<EnterOtpScreen> createState() => _EnterOtpScreenState();
}

class _EnterOtpScreenState extends State<EnterOtpScreen> {
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  TextEditingController _controller3 = TextEditingController();
  TextEditingController _controller4 = TextEditingController();
  TextEditingController _controller5 = TextEditingController();
  TextEditingController _controller6 = TextEditingController();

  goCreateNewPasswordPage(){
                     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CreateNewPasswordScreen()));

  }

  @override
  void dispose() {
    _controller1;
    _controller2;
    _controller3;
    _controller4;
    _controller5;
    _controller6;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,),
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
                          "Enter OTP",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "Please enter 6 digit Code sent to your registered\n mobile number xxx xxx 6124 ",
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
              width: 0.8,
              height: 0.25,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.only(right: 25.0, left: 25, top: 25),
                    height: MediaQuery.sizeOf(context).height * 0.08,
                    child: Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.02,
                        ),
                        Expanded(
                            child: OtpTextField(
                          controller: _controller1,
                        )),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.02,
                        ),
                        Expanded(
                            child: OtpTextField(
                          controller: _controller2,
                        )),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.02,
                        ),
                        Expanded(
                            child: OtpTextField(
                          controller: _controller3,
                        )),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.02,
                        ),
                        Expanded(
                            child: OtpTextField(
                          controller: _controller4,
                        )),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.02,
                        ),
                        Expanded(
                            child: OtpTextField(
                          controller: _controller5,
                        )),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.02,
                        ),
                        Expanded(
                            child: OtpTextField(
                          controller: _controller6,
                        )),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.02,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 40,
                    ),
                    child: ButtonOfPage(
                      text: "Submit",
                      onPressed: goCreateNewPasswordPage,
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, left: 85),
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
        ],
      ),
    );
  }
}
