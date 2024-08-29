import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:trip_trek/entities/routes/routes.dart';
import 'package:trip_trek/entities/styles/palettes.dart';
import 'package:trip_trek/entities/widgets/custom_elevated_button.dart';
import 'package:trip_trek/entities/widgets/custom_text_filed.dart';
import 'package:trip_trek/entities/widgets/sign_widget.dart';
import 'package:trip_trek/services/authentication/auth_services.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen
({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

      final AuthService _authService = AuthService();

   TextEditingController userName = TextEditingController();
   TextEditingController email = TextEditingController();
   TextEditingController password = TextEditingController();

   @override
  void dispose() {
    // TODO: implement dispose
    userName.dispose();
    email.dispose();
    password.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.blue,
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
                     const Text("Sign Up",style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        color: Palette.erieBlack,
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
                        color: Palette.erieBlack,
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        fontWeight: FontWeight.w600
                        
                      ),),
                      CustomTextFiled(
                        controller: userName,
                        hintText: 'Your name',
                        height: MediaQuery.of(context).size.height*0.06,
                        width: MediaQuery.of(context).size.width*0.9,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.01),
                        
                        child: const Text("Email",style: TextStyle(
                          color: Palette.erieBlack,
                          fontFamily: 'Poppins',
                          fontSize: 13,
                          fontWeight: FontWeight.w600
                          
                        ),),
                      ),
                      CustomTextFiled(
                        controller: email,
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
                        controller:password,
                        hintText: '*******',
                        obscureText: true,
                        height: MediaQuery.of(context).size.height*0.06,
                        width: MediaQuery.of(context).size.width*0.9,
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height *0.03),
                        child: CustomElevatedButton(buttonString: 'Sign Up',
                         onPressed: _signup,
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
void _signup() async {
  String username = userName.text;
  String useremail = email.text;
  String userpassword = password.text;

  try {
    User? user = await _authService.signUpWithEmailAndPassword(useremail, userpassword);

    if (user != null) {
      print("User is successfully created");
      await _addUser(); 
      Navigator.pushNamed(context, Routes.navigation);
    } else {
      print("Error occurred during sign-up");
    }
  } catch (e) {
    print("Sign-up failed: $e");
  }
}


Future <void> _addUser() async {
  try {
    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      await _authService.addUser(
        user.uid,
        userName.text.isNotEmpty ? userName.text : 'No Name',
        'No First Name',
        'No Last Name',
        'No Gender',
        email.text.isNotEmpty ? email.text : 'No Email',
        'No Phone',
        'No Emergency',
        'No Image'
      );
      print("User information added to Firestore");
    } else {
      print("No user is currently signed in");
    }
  } catch (e) {
    print("Failed to add user: $e");
  }
}

}