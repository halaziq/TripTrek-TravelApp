import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trip_trek/entities/styles/palettes.dart';

class CustomTextFiled extends StatelessWidget {
  final double height;
  final double width;
  final String hintText;
  final Color hintColor;
  final String obscuringCharacter;
  final Color cursorColor;
  final bool obscureText;
  final bool hasIcon;
  final String icon;
  const CustomTextFiled({
    this.height = 50,
    this.width = 400,
    this.hasIcon = false,
    this.icon = "assets/icons/search-normal.png",
    required this.hintText,
    this.obscuringCharacter = "*",
    this.hintColor = Paletts.spanishGrey,
    this.obscureText = false,
    this.cursorColor = Paletts.spanishGrey,
  super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding:EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05),
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Paletts.spanishGrey,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(30))
      ),
      child: Padding(
        padding:  EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.01),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            hasIcon == true? Padding(
              padding: const EdgeInsets.only(right: 3,top: 8),
              child: Image.asset(icon,scale: 1.5,),
            ): const SizedBox(height: 0,width: 0,),

            SizedBox(
              height: height,
              width:  width - 110,
              child: TextFormField(
                obscureText: obscureText,
                obscuringCharacter: "*",
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: TextStyle(
                  color: hintColor,
                  fontSize: 10,
                  fontFamily: 'Poppins',
                  fontStyle: FontStyle.normal
                )
                ),
                cursorColor: cursorColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}