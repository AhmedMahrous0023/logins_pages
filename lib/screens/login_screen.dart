import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Stack(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height * 0.5,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
                          color: Colors.blue[900],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12)
              )
            ),
            child:SafeArea(child: Column(
              children: [
                SizedBox(height: MediaQuery.sizeOf(context).height*.06,),
                Image.asset("assets/images/unnamed.png",width: MediaQuery.sizeOf(context).width*.25,),
                                SizedBox(height: MediaQuery.sizeOf(context).height*.01,),
                Text("APP ICON",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),
              ],
            )) ,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
             
              height: MediaQuery.sizeOf(context).height * 0.4,
              width: MediaQuery.sizeOf(context).width * .8,
              decoration: BoxDecoration(
                 color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30)
                )
              ),
              child: Column(
                children: [
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
                  Container(
                    width: MediaQuery.sizeOf(context).width * .7,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.blue),
                              foregroundColor:
                                  MaterialStatePropertyAll(Colors.white),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero))),
                          onPressed: () {},
                          child: Text("Sign in")),
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * .7,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 9,
                      ),
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.white),
                              foregroundColor:
                                  MaterialStatePropertyAll(Colors.blue),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero,
                                      side: BorderSide(color: Colors.blue)))),
                          onPressed: () {},
                          child: Text("Sign Up")),
                    ),
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
                  SizedBox(height: MediaQuery.sizeOf(context).height*.03,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: MediaQuery.sizeOf(context).width*.1,
                          height: 20,
                          child: Image.asset(
                            "assets/images/face.png",
                            width: 20,
                            height: 20,
                          )),
                      Container(
                      width: MediaQuery.sizeOf(context).width*.1,
                          height: 20,
                          child: Image.asset(
                            "assets/images/new-Twitter-logo-x-black-png.png",
                            width: 20,
                            height: 20,
                          )),
                      Container(
                      width: MediaQuery.sizeOf(context).width*.1,
                          height: 20,
                          child: Image.asset(
                            "assets/images/google-logo.jpeg",
                            width: 20,
                            height: 20,
                          )),
                      Container(
                      width: MediaQuery.sizeOf(context).width*.1,
                          height: 20,
                          child: Image.asset(
                            "assets/images/mobile.png",
                            width: 20,
                            height: 20,
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 90),
              child: InkWell(
                onTap: (){},
                child: Text("SKIP",style: TextStyle(color: Colors.grey[800],fontWeight: FontWeight.bold,fontSize: 17),)),
            )),
           
        ],
      ),
    );
  }
}
