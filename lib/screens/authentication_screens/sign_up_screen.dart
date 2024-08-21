import 'package:flutter/material.dart';
import 'package:trip_trek/entities/routes/routes.dart';
import 'package:trip_trek/entities/styles/palettes.dart';
import 'package:trip_trek/entities/widgets/custom_elevated_button.dart';
import 'package:trip_trek/entities/widgets/custom_text_filed.dart';
import 'package:trip_trek/entities/widgets/sign_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen
({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Paletts.blue,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child:  Stack(
          children: [
            Padding(
              padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.05),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.4,
                child: Image.asset("assets/images/Plane.png"),
                
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.25),
              child: Expanded(
                child: Container(
                height: MediaQuery.of(context).size.height*0.9,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Paletts.snow,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                ),
                child: Padding(
                  padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.05,
                  left: MediaQuery.of(context).size.width *0.07,
                  right: MediaQuery.of(context).size.width *0.07),
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     const Text("Sign Up",style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        color: Paletts.erieBlack,
                        fontSize: 23
                      ),),
                      Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height*0.01,
                          bottom:MediaQuery.of(context).size.height*0.03 ),
                        child: const Text("Create an account, it's free",style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 13,
                        ),),
                      ),
                       const Text("Name",style: TextStyle(
                        color: Paletts.erieBlack,
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        fontWeight: FontWeight.w600
                        
                      ),),
                      CustomTextFiled(
                        hintText: 'Your name',
                        height: MediaQuery.of(context).size.height*0.06,
                        width: MediaQuery.of(context).size.width*0.9,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.01),
                        
                        child: const Text("Email",style: TextStyle(
                          color: Paletts.erieBlack,
                          fontFamily: 'Poppins',
                          fontSize: 13,
                          fontWeight: FontWeight.w600
                          
                        ),),
                      ),
                      CustomTextFiled(
                        hintText: 'youremails@yahoo.com',
                        height: MediaQuery.of(context).size.height*0.06,
                        width: MediaQuery.of(context).size.width*0.9,
                      ),

                           Padding(
                             padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.01),
                             child: const Text("Password",style: TextStyle(
                                                     color: Paletts.erieBlack,
                                                     fontFamily: 'Poppins',
                                                     fontSize: 13,
                                                     fontWeight: FontWeight.w600
                                                     
                                                   ),),
                           ),
                      CustomTextFiled(
                        hintText: '*******',
                        obscureText: true,
                        height: MediaQuery.of(context).size.height*0.06,
                        width: MediaQuery.of(context).size.width*0.9,
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height *0.03),
                        child: CustomElevatedButton(buttonString: 'Sign Up',
                         onPressed: ()=> Navigator.pushNamed(context, Routes.home),
                         width: MediaQuery.of(context).size.width*0.9,
                         ),
                      ),
                        SignWidget(
                        question: "Have account?",
                        signType: "Sign In",
                        route: ()=> Navigator.pushNamed(context, Routes.signIn),
                       ),
              
                  ],),
                ),
                )),
            )

          ],
        ),
      ),
    );
  }
}