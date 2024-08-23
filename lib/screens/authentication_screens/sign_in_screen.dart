import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trip_trek/entities/routes/routes.dart';
import 'package:trip_trek/entities/styles/palettes.dart';
import 'package:trip_trek/entities/widgets/custom_elevated_button.dart';
import 'package:trip_trek/entities/widgets/custom_text_filed.dart';
import 'package:trip_trek/entities/widgets/sign_widget.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Palette.blue,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child:  Stack(
          children: [
            Padding(
              padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.1),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.4,
                child: Image.asset("assets/images/wagon.png"),
                
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.3),
              child: Expanded(
                child: Container(
                height: MediaQuery.of(context).size.height*0.8,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Palette.snow,
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
                     const Text("Sign In",style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        color: Palette.erieBlack,
                        fontSize: 23
                      ),),
                      Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height*0.01,
                          bottom:MediaQuery.of(context).size.height*0.03 ),
                        child: const Text('Please enter a valid account',style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 13,
                        ),),
                      ),
                      const Text("Email",style: TextStyle(
                        color: Palette.erieBlack,
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        fontWeight: FontWeight.w600
                        
                      ),),
                      CustomTextFiled(
                        hintText: 'youremails@yahoo.com',
                        height: MediaQuery.of(context).size.height*0.06,
                        width: MediaQuery.of(context).size.width*0.9,
                      ),

                           Padding(
                             padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.01),
                             child: const Text("Password",style: TextStyle(
                                                     color: Palette.erieBlack,
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
                      Container(
                        height: MediaQuery.of(context).size.height*0.05,
                        width: MediaQuery.of(context).size.width*0.9,
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: ()=> Navigator.pushNamed(context, Routes.forgotPassword),
                          child: const Text("Forgot Password",style: TextStyle(
                            color: Palette.erieBlack,
                             fontFamily: 'Poppins',
                            fontSize: 13,
                            fontWeight: FontWeight.w600
                          ),), 

                        ),
                    
                        
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height *0.03),
                        child: CustomElevatedButton(buttonString: 'Sign In',
                         onPressed: ()=> Navigator.pushNamed(context, Routes.navigation),
                         width: MediaQuery.of(context).size.width*0.9,
                         ),
                      ),
                        SignWidget(
                        question: "Don't have an account?",
                        signType: "Sign Up",
                        route: ()=> Navigator.pushNamed(context, Routes.signUp),
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