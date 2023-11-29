import 'package:flutter/material.dart';
import 'package:login_pages/components/blue_container.dart';
import 'package:login_pages/components/button_of_page.dart';
import 'package:login_pages/components/text_field_input.dart';
import 'package:login_pages/components/white_container.dart';
import 'package:login_pages/screens/enter_otp_screen.dart';

class RecoverYourPasswordScreen extends StatefulWidget {
  const RecoverYourPasswordScreen({super.key});

  @override
  State<RecoverYourPasswordScreen> createState() => _RecoverYourPasswordScreenState();
}

class _RecoverYourPasswordScreenState extends State<RecoverYourPasswordScreen> {
  TextEditingController _numberController =TextEditingController();
    TextEditingController _emailController =TextEditingController();

    goEnterOtpPage(){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>EnterOtpScreen()));

    }
    bool value =false ;

    checkBoxChanged (value){
      setState(() {
        value = !value ;
      });
    }

    @override
  void dispose() {
_emailController ;
_numberController ;
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
                          "Recover Your Password",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "Select credentials which should we use to\n recover your password",
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
              height: 0.29,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextFieldInput(obscureText: value,
                      controller: _numberController,
                      hintText: " *** *** 6124",
                      prefixIcon: Icon(Icons.mobile_friendly),
                      suffix: Checkbox(value: value, onChanged: checkBoxChanged),
                      ),
                      TextFieldInput(obscureText: false,
                      controller: _emailController,
                      hintText: " ***** 83@email.com",
                      prefixIcon: Icon(Icons.email)),
                  Padding(
                    padding: const EdgeInsets.only(top: 25,),
                    child: ButtonOfPage(
                      text: "Recover Password",
                      onPressed: goEnterOtpPage,
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
