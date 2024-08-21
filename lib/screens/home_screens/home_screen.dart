import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trip_trek/entities/styles/palettes.dart';
import 'package:trip_trek/entities/widgets/activity_widget.dart';
import 'package:trip_trek/entities/widgets/custom_text_filed.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Paletts.snow,
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(MediaQuery.of(context).size.height*0.02),
          child: ListView(
            
            children: [
              const Text('Your Location', style:  TextStyle(
                fontFamily: 'Poppins',
                fontSize: 11,
                fontStyle: FontStyle.normal,
              ),),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width,
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   const Text("Tangerang, Kab.",style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 13,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                    ),),
                    SizedBox(
                      width: MediaQuery.of(context).size.width *0.42,
                    ),
                    Image.asset("assets/icons/Discount.png",
                    scale: 1.5,),
                    Image.asset("assets/icons/setting.png",
                    scale: 1.5,)
                ],),
              ),

              const CustomTextFiled(
                hintText: "Search",
                hasIcon: true,
                icon: "assets/icons/search-normal.png",
                ),

                  SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width,
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                   const Text("Popular Nearby",style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      color: Paletts.erieBlack,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                    ),),

                    TextButton(onPressed: (){},
                    child: const Text("See all",style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 13,
                      color: Paletts.erieBlack,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                    ),
                    )),
                   
                 
                ],),
              ),
               SizedBox(
                      height: MediaQuery.of(context).size.height*0.3,
                      width: MediaQuery.of(context).size.width,
                      child: const ActivityWidget(),
                    )
          
            ],
          ),
        )
      ),
    );
  }
}