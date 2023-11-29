import 'package:flutter/material.dart';
import 'package:login_pages/components/blue_container.dart';
import 'package:login_pages/components/button_of_page.dart';
import 'package:login_pages/components/text_field_input.dart';
import 'package:login_pages/components/white_container.dart';
import 'package:login_pages/screens/password_changed_successfuly.dart';

class CreateNewPasswordScreen extends StatefulWidget {
  const CreateNewPasswordScreen({super.key});

  @override
  State<CreateNewPasswordScreen> createState() =>
      _CreateNewPasswordScreenState();
}

class _CreateNewPasswordScreenState extends State<CreateNewPasswordScreen> {
  TextEditingController _newPasswordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  goPassoredChangedSuccess() {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => PasswordChangedSuccessfuly()));
  }

  @override
  void dispose() {
    _newPasswordController;
    _confirmPasswordController;
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
                          "Create new Password",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "Create a new Password and Please never share\n it with anyone for safe use",
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
              height: 0.30,
              child: Column(
                children: [
                  TextFieldInput(
                      obscureText: false,
                      controller: _newPasswordController,
                      hintText: "New Password",
                      prefixIcon: Icon(Icons.lock_open_rounded)),
                  TextFieldInput(
                      obscureText: true,
                      controller: _confirmPasswordController,
                      hintText: "Confirm New Password",
                      prefixIcon: Icon(Icons.lock_rounded)),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: ButtonOfPage(
                      text: "Update Password",
                      onPressed: goPassoredChangedSuccess,
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
