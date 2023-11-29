import 'package:flutter/material.dart';
import 'package:login_pages/components/button_of_page.dart';

class BlueContainer extends StatelessWidget {
   final double? height;
   
  final double? imageWidth;
  final double? imageHeight;
  final Widget text ;
 

  BlueContainer(
      {super.key,
      required this.height,
      this.imageWidth,
      this.imageHeight,
      required this.text,
      }
      ); 

  @override
  Widget build(BuildContext context) {
    return 
      
        Container(
          height: MediaQuery.sizeOf(context).height * height!,
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
              color: Colors.blue[900],
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12))),
          child: SafeArea(
              child: Column(
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * .06,
              ),
              Image.asset(
                "assets/images/unnamed.png",
                width: MediaQuery.sizeOf(context).width * imageWidth!,
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * imageHeight!,
              ),
              text
              
            ],
          )),
        );
  }}
//         Align(
//           alignment: Alignment.center,
//           child:container),
          
//                 Container(
//                   width: MediaQuery.sizeOf(context).width * .7,
//                   child: Padding(
//                     padding: const EdgeInsets.only(top: 25),
//                     child: ElevatedButton(
//                         style: ButtonStyle(
//                             backgroundColor:
//                                 MaterialStatePropertyAll(Colors.blue),
//                             foregroundColor:
//                                 MaterialStatePropertyAll(Colors.white),
//                             shape: MaterialStateProperty.all(
//                                 RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.zero))),
//                         onPressed: () {},
//                         child: Text("Sign in")),
//                   ),
//                 ),
//                 Container(
//                   width: MediaQuery.sizeOf(context).width * .7,
//                   child: Padding(
//                       padding: const EdgeInsets.only(
//                         top: 9,
//                       ),
//                       child: ButtonOfPage(text: "Sign In", onPressed: () {})),
//                 ),
//                 SizedBox(
//                   height: MediaQuery.sizeOf(context).height * .05,
//                 ),
//                 Row(
//                   children: [
//                     SizedBox(
//                       width: MediaQuery.sizeOf(context).width * .05,
//                     ),
//                     Expanded(
//                         child: Divider(
//                       color: Colors.grey,
//                     )),
//                     Text("  Or connect using  "),
//                     Expanded(
//                         child: Divider(
//                       color: Colors.grey,
//                     )),
//                     SizedBox(
//                       width: MediaQuery.sizeOf(context).width * .05,
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: MediaQuery.sizeOf(context).height * .03,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Container(
//                         width: MediaQuery.sizeOf(context).width * .1,
//                         height: 20,
//                         child: Image.asset(
//                           "assets/images/face.png",
//                           width: 20,
//                           height: 20,
//                         )),
//                     Container(
//                         width: MediaQuery.sizeOf(context).width * .1,
//                         height: 20,
//                         child: Image.asset(
//                           "assets/images/new-Twitter-logo-x-black-png.png",
//                           width: 20,
//                           height: 20,
//                         )),
//                     Container(
//                         width: MediaQuery.sizeOf(context).width * .1,
//                         height: 20,
//                         child: Image.asset(
//                           "assets/images/google-logo.jpeg",
//                           width: 20,
//                           height: 20,
//                         )),
//                     Container(
//                         width: MediaQuery.sizeOf(context).width * .1,
//                         height: 20,
//                         child: Image.asset(
//                           "assets/images/mobile.png",
//                           width: 20,
//                           height: 20,
//                         )),
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ),
//         Align(
//             alignment: Alignment.bottomCenter,
//             child: Padding(
//               padding: const EdgeInsets.only(bottom: 90),
//               child: InkWell(
//                   onTap: () {},
//                   child: Text(
//                     "SKIP",
//                     style: TextStyle(
//                         color: Colors.grey[800],
//                         fontWeight: FontWeight.bold,
//                         fontSize: 17),
//                   )),
//             )),
      
    
//   }
// }
