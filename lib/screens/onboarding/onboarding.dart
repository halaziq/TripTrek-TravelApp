import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trip_trek/entities/styles/palettes.dart';
import 'package:trip_trek/entities/widgets/custom_elevated_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int count = 2;
  String title1 = 'Plan Your Trip' ;
  String title2 = 'Get the Best Deal';
  String title3 = 'Explore Local Attractions';
  String description1 = 'Create your dream trip with ease. Choose a destination, find the perfect place to stay, and create an itinerary that suits your preferences.';
  String description2 = 'Save time and money by finding the best travel deals. We provide a range of exclusive promotions and discounts to make your trip more affordable.';
  String description3 = 'Discover the beauty of local places you may never have visited. Experience local life and enjoy authentic experiences in each destination.';
  String image1 = 'assets/images/Booking.png';
  String image2 = 'assets/images/Traveller.png';
  String image3 = 'assets/images/Hiking.png';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Paletts.blue,
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(
            top: MediaQuery.of(context).size.height*0.05,
            bottom: MediaQuery.of(context).size.height*0.05),
            child: SizedBox(
              height: MediaQuery.of(context).size.height*0.4,
              width: MediaQuery.of(context).size.width,
              child: Image.asset("assets/images/Booking.png"),
            ),
          ),
        
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration:const BoxDecoration(
                color: Paletts.snow,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30)),
              ),
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.83,
                    child: Text(count == 0? title1: count == 1? title2 : title3, style:const TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      color: Paletts.erieBlack,
                      fontSize: 23,
                    ),
                    textAlign: TextAlign.center,),
                  ),

                   SizedBox(
                    width: MediaQuery.of(context).size.width*0.9,
                     child: Text(count == 0? description1 : count == 1? description2 : description3, style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                      color: Paletts.erieBlack,
                                       ),
                     textAlign: TextAlign.center,),
                   ),
                  CustomElevatedButton(
                    height: MediaQuery.of(context).size.height*0.06,
                    width: MediaQuery.of(context).size.width*0.9,
                    textSize: 16,
                    buttonString: "Next", 
                    onPressed: (){
                      setState(() {
                        count == 2 ? count = 0 : count++;
                        
                      });
                    }),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  onboardingCircle(count == 0? Paletts.blue:Paletts.spanishGrey),
                  onboardingCircle(count == 1? Paletts.blue:Paletts.spanishGrey),
                  onboardingCircle(count == 2? Paletts.blue:Paletts.spanishGrey),

                  ],),

               
                ],),
            ),
             ),

        ],
    )
      );

  }

Widget onboardingCircle(Color color){
  return Padding(
    padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width*0.02),
    child: CircleAvatar(
      radius: MediaQuery.of(context).size.width*0.012,
      backgroundColor: color,
    ),
  );
}
}