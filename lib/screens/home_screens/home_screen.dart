import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trip_trek/entities/routes/routes.dart';
import 'package:trip_trek/entities/styles/palettes.dart';
import 'package:trip_trek/entities/widgets/activity_widget.dart';
import 'package:trip_trek/entities/widgets/article_widget.dart';
import 'package:trip_trek/entities/widgets/choose_location_widget.dart';
import 'package:trip_trek/entities/widgets/custom_text_filed.dart';
import 'package:trip_trek/entities/widgets/promp_widget.dart';
import 'package:trip_trek/entities/widgets/recommended_activity_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Palette.snow,
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

               CustomTextFiled(
                controller: search,
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
                      color: Palette.erieBlack,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                    ),),

                    TextButton(onPressed: (){},
                    child: const Text("See all",style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 13,
                      color: Palette.erieBlack,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                    ),
                    )),
                   
                 
                ],),
              ),
               SizedBox(
                      height: MediaQuery.of(context).size.height*0.35,
                      width: MediaQuery.of(context).size.width,
                      child: const ActivityWidget(),
                    ),
                    SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width,
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                   const Text("Recommended",style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      color: Palette.erieBlack,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                    ),),

                    TextButton(onPressed: (){},
                    child: const Text("See all",style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 13,
                      color: Palette.erieBlack,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                    ),
                    )),
                   
                 
                ],),
              ),

              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.15,
                child: const RecommendedActivityWidget()),
              Container(
                alignment: Alignment.centerLeft,
                height: MediaQuery.of(context).size.height*0.06,
                width: MediaQuery.of(context).size.width,
                child:  const Text("Promo partner",style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      color: Palette.erieBlack,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                    ),),
              
              ),

              
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.15,
                child: const PromoWidget()),

          SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width,
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                   const Text("Nearst your location",style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      color: Palette.erieBlack,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                    ),),

                    TextButton(onPressed: (){},
                    child: const Text("See all",style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 13,
                      color: Palette.erieBlack,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                    ),
                    )),
                   
                 
                ],),
              ),

                SizedBox(
                      height: MediaQuery.of(context).size.height*0.35,
                      width: MediaQuery.of(context).size.width,
                      child: const ActivityWidget(
                        isPopular: false,
                      ),
                    ),

                        SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width,
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                   const Text("Choose the location",style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      color: Palette.erieBlack,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                    ),),

                    TextButton(onPressed: (){
                      FirebaseAuth.instance.signOut();
                      Navigator.pushNamed(context, Routes.signIn);
                    },
                    child: const Text("See all",style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 13,
                      color: Palette.erieBlack,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                    ),
                    )),
                   
                 
                ],),
              ),

              SizedBox(
                 height: MediaQuery.of(context).size.height*0.35,
                width: MediaQuery.of(context).size.width,
                child: const ChooseLocationWidget(),
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width,
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                   const Text("Article",style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      color: Palette.erieBlack,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                    ),),

                    TextButton(onPressed: (){},
                    child: const Text("See all",style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 13,
                      color: Palette.erieBlack,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                    ),
                    )),
                   
                 
                ],),
              ),

              SizedBox(
            height: MediaQuery.of(context).size.height*0.28,
          width: MediaQuery.of(context).size.width,
          child: const ArticleWidget(),
              )

          
            ],
          ),
        )
      ),
    );
  }
}