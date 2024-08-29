import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:trip_trek/entities/styles/palettes.dart';

class ActiviyDetailsScreen extends StatelessWidget {
  const ActiviyDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.snow,
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(MediaQuery.of(context).size.height*0.02),
          child: ListView(
            children: [
              
              Stack(
                children: [
                  SizedBox(
              height: MediaQuery.of(context).size.height * 0.58,
              width: MediaQuery.of(context).size.width,
                            ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                 borderRadius: BorderRadius.all(Radius.circular(25))
              ),
              clipBehavior: Clip.antiAlias,
              child: Image.network("https://miro.medium.com/v2/resize:fit:720/format:webp/0*e9ykt0jPSuFNQbfT",fit: BoxFit.cover,),
              
                  ),
                  Padding(
                    padding:  EdgeInsets.only(
                      top: MediaQuery.of(context).size.height*0.04,
                      left: MediaQuery.of(context).size.width*0.04
                    ),
                    child: GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: CircleAvatar(
                        radius: MediaQuery.of(context).size.width*0.05,
                        backgroundColor: Palette.snow,
                        child: Image.asset("assets/icons/Back.png",scale: 1.3,),
                      ),
                    ),
                  ),
                  Padding(
                      padding:  EdgeInsets.only(
                      top: MediaQuery.of(context).size.height*0.04,
                      left: MediaQuery.of(context).size.width*0.75
                    ),
                    child: GestureDetector(
                      onTap: () {},
                      child: CircleAvatar(
                        radius: MediaQuery.of(context).size.width*0.05,
                        backgroundColor: Palette.snow,
                        child: Image.asset("assets/icons/heartoutline.png",scale: 1.5,),
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(
                      top: MediaQuery.of(context).size.height*0.4,
                      left: MediaQuery.of(context).size.width*0.04
                    ),
                    child: const Text("Semeru Mountain",style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15,
                    color: Palette.snow,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600
                                      ),),
              
                  ),
                  Padding(
                     padding:  EdgeInsets.only(
                      top: MediaQuery.of(context).size.height*0.435,
                      left: MediaQuery.of(context).size.width*0.04
                    ),
                    child: Image.asset("assets/icons/locationW.png",scale: 2,),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(
                      top: MediaQuery.of(context).size.height*0.435,
                      left: MediaQuery.of(context).size.width*0.1
                    ),
                    child: const Text("Malang, East Java",style: TextStyle(
                                      fontFamily: 'Poppins',
                    fontSize: 11,
                    color: Palette.snow,
                    fontStyle: FontStyle.normal,
                                      ),),
                  ),
              
                  Padding(
                    padding:  EdgeInsets.only(
                      top: MediaQuery.of(context).size.height*0.38,
                      left: MediaQuery.of(context).size.width*0.65
                    ),
                    child: Stack(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height*0.1,
                          width: MediaQuery.of(context).size.width*0.2,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: Image.network("https://th.bing.com/th/id/OIP.hk1WQHjhBSgyQU0QY8i-BAHaEo?rs=1&pid=ImgDetMain",fit: BoxFit.cover,),
                        ),
                        Container(
                           height: MediaQuery.of(context).size.height*0.1,
                          width: MediaQuery.of(context).size.width*0.2,
                          decoration:  BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                            color: Palette.erieBlack.withOpacity(0.2)
                          ),
                          alignment: Alignment.center,
                          child: const Text("5+", style: TextStyle(
                            color: Palette.snow,
                            fontSize: 11,
                            fontFamily: 'Poppins'
                          ),),
              
                        )
              
                      ],
                    ),
                  ),

                  Padding(
                      padding:  EdgeInsets.only(
                      top: MediaQuery.of(context).size.height*0.52,
                      left: MediaQuery.of(context).size.width*0.2
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.height*0.06,
                      width: 1,
                      color: Palette.spanishGrey,
                    ),
                  ),

                  Padding(
                      padding:  EdgeInsets.only(
                      top: MediaQuery.of(context).size.height*0.52,
                      left: MediaQuery.of(context).size.width*0.43
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.height*0.06,
                      width: 1,
                      color: Palette.spanishGrey,
                    ),
                  ),

                  Padding(
                      padding:  EdgeInsets.only(
                      top: MediaQuery.of(context).size.height*0.52,
                      left: MediaQuery.of(context).size.width*0.64
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.height*0.06,
                      width: 1,
                      color: Palette.spanishGrey,
                    ),
                  ),

                  Padding(
                      padding:  EdgeInsets.only(
                      top: MediaQuery.of(context).size.height*0.52,
                      left: MediaQuery.of(context).size.width*0.05
                    ),
                    child: const Text("RATING", style: TextStyle(
                      color: Palette.spanishGrey,
                      fontFamily: 'Poppins',
                      fontSize: 11,
                      fontStyle: FontStyle.normal
                    ),),
                  ),

                  Padding(
                    padding:  EdgeInsets.only(
                      top: MediaQuery.of(context).size.height*0.55,
                      left: MediaQuery.of(context).size.width*0.05
                    ),
                    child: Image.asset("assets/icons/Vector.png",scale: 1.5,),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(
                      top: MediaQuery.of(context).size.height*0.55,
                      left: MediaQuery.of(context).size.width*0.1
                    ),
                    child: const Text("4.5",style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Palette.erieBlack,
                      fontSize: 12,
                      fontWeight: FontWeight.w600
                    ),),
                  ),

                  Padding(
                    padding:  EdgeInsets.only(
                      top: MediaQuery.of(context).size.height*0.52,
                      left: MediaQuery.of(context).size.width*0.22
                    ),
                    child: const Text("TYPE", style: TextStyle(
                       color: Palette.spanishGrey,
                        fontFamily: 'Poppins',
                        fontSize: 11,
                        fontStyle: FontStyle.normal
                    ),),
                  ),

                      Padding(
                    padding:  EdgeInsets.only(
                      top: MediaQuery.of(context).size.height*0.55,
                      left: MediaQuery.of(context).size.width*0.22
                    ),
                    child: const Text("Open Trip", style: TextStyle(
                        fontFamily: 'Poppins',
                      color: Palette.erieBlack,
                      fontSize: 12,
                      fontWeight: FontWeight.w600
                    ),),
                  ),

                  Padding(
                    padding:  EdgeInsets.only(
                      top: MediaQuery.of(context).size.height*0.52,
                      left: MediaQuery.of(context).size.width*0.45
                    ),
                    child: const Text("ESTIMATE", style: TextStyle(
                       color: Palette.spanishGrey,
                        fontFamily: 'Poppins',
                        fontSize: 11,
                        fontStyle: FontStyle.normal
                    ),),
                  ),

                      Padding(
                    padding:  EdgeInsets.only(
                      top: MediaQuery.of(context).size.height*0.55,
                      left: MediaQuery.of(context).size.width*0.45
                    ),
                    child: const Text("3D 2N", style: TextStyle(
                        fontFamily: 'Poppins',
                      color: Palette.erieBlack,
                      fontSize: 12,
                      fontWeight: FontWeight.w600
                    ),),
                  ),

                  Padding(
                    padding:  EdgeInsets.only(
                      top: MediaQuery.of(context).size.height*0.52,
                      left: MediaQuery.of(context).size.width*0.66
                    ),
                    child: const Text("VIA", style: TextStyle(
                       color: Palette.spanishGrey,
                        fontFamily: 'Poppins',
                        fontSize: 11,
                        fontStyle: FontStyle.normal
                    ),),
                  ),

                      Padding(
                    padding:  EdgeInsets.only(
                      top: MediaQuery.of(context).size.height*0.55,
                      left: MediaQuery.of(context).size.width*0.66
                    ),
                    child: const Text("Ranupane", style: TextStyle(
                        fontFamily: 'Poppins',
                      color: Palette.erieBlack,
                      fontSize: 12,
                      fontWeight: FontWeight.w600
                    ),),
                  ),
                  
                ],
              ),

              Container(
                height: MediaQuery.of(context).size.height*0.06,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.centerLeft,
               padding:  EdgeInsets.only(
                    top: MediaQuery.of(context).size.height*0.03,
                    left: MediaQuery.of(context).size.width*0.05
                  ),
                child:    const Text("Description",style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      color: Palette.erieBlack,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                    ),),
              ),

              Container(
                height: MediaQuery.of(context).size.height*0.1,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.centerLeft,
               padding:  EdgeInsets.only(
                    //: MediaQuery.of(context).size.height*0.1,
                    left: MediaQuery.of(context).size.width*0.05
                  ),
                child:    const Text("Mount Semeru or Mount Meru is a cone volcano in East Java, Indonesia. Mount Semeru is the highest mountain on the island of Java, with its peak Mahameru, 3,676 meters above sea level.",style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 10,
                      color: Palette.erieBlack,
                      //fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                    ),),
              ),
              
              Container(
                height: MediaQuery.of(context).size.height*0.06,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.centerLeft,
               padding:  EdgeInsets.only(
                    top: MediaQuery.of(context).size.height*0.03,
                    left: MediaQuery.of(context).size.width*0.05
                  ),
                child:    const Text("Choose Date",style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      color: Palette.erieBlack,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                    ),),
              ),

              Padding(
                padding:  EdgeInsets.only(
                  left: MediaQuery.of(context).size.width*0.05,
                  top: MediaQuery.of(context).size.height*0.005),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*0.07,
                  child:   selectionButton(
                     MediaQuery.of(context).size.height*0.05,
                     MediaQuery.of(context).size.width*0.38,
                     '15 Dec - 20 Dec 2023',
                     false
                  ),
                ),
              ),

              Container(
                height: MediaQuery.of(context).size.height*0.06,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.centerLeft,
               padding:  EdgeInsets.only(
                    top: MediaQuery.of(context).size.height*0.03,
                    left: MediaQuery.of(context).size.width*0.05
                  ),
                child:    const Text("Choose Meeting Point",style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      color: Palette.erieBlack,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                    ),),
              ),

              Padding(
                padding:  EdgeInsets.only(
                  left: MediaQuery.of(context).size.width*0.05,
                  top: MediaQuery.of(context).size.height*0.005),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*0.07,
                  child:   selectionButton(
                     MediaQuery.of(context).size.height*0.05,
                     MediaQuery.of(context).size.width*0.2,
                     'Jakarta',
                     false
                  ),
                ),
              ),

              Padding(padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width*0.05,
                top: MediaQuery.of(context).size.height*0.03,
                right: MediaQuery.of(context).size.width*0.05,
                
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Palette.spanishGrey,
                    width: 1
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(25))
                ),
                height: MediaQuery.of(context).size.height*0.15,
                width: MediaQuery.of(context).size.width,
                child: 
                 Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width*0.05),
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        
                        children: [
                         const Text("Number of pax",style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500
                          ),),
                          SizedBox(
                            height: MediaQuery.of(context).size.height*0.01,),

                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("\$80",style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500
                              ),),
                              Text("/pax",style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 8,
                                fontStyle: FontStyle.normal,
                              ),),
                            ],
                          ),
                        ],
                      ),
                    ),

                   Padding(
                     padding:  EdgeInsets.only(
                      left: MediaQuery.of(context).size.width *0.13),
                     child: const Icon(Icons.minimize,size: 25,),
                   ),

                   Padding(
                     padding:  EdgeInsets.only(
                      left: MediaQuery.of(context).size.width *0.02,
                      top: MediaQuery.of(context).size.height*0.02
                      ),
                     child: const Text("1",style: TextStyle(
                      color: Palette.erieBlack,
                      fontFamily: 'Poppins',
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal
                     
                     ),),
                   ),

                    Padding(
                     padding:  EdgeInsets.only(
                      left: MediaQuery.of(context).size.width *0.02,
                      top: MediaQuery.of(context).size.height*0.02
                      ),
                     child: const Icon(Icons.add,size: 25,),
                   ),

                ],),
              ),

              ),

                   Container(
                height: MediaQuery.of(context).size.height*0.06,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.centerLeft,
               padding:  EdgeInsets.only(
                    top: MediaQuery.of(context).size.height*0.03,
                    left: MediaQuery.of(context).size.width*0.05
                  ),
                child:    const Text("Facilities",style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      color: Palette.erieBlack,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                    ),),
              ),

              facilities(context)

              

            ],
          ),
        ),
      ),
    );
  }

  Widget selectionButton(double height, double width, String text,bool hasICon,{
    String image = '',
    String image1 = '',
  }){
    bool tapped = true;
    return Row(
      children: [
       
        GestureDetector(
          child: Container(
           width: width,
           height:height,
            decoration: BoxDecoration(
              border: Border.all(
                color: Palette.spanishGrey,
                width: 1
              ),
              color: tapped == true ? Palette.erieBlack : Palette.snow,
              borderRadius: const BorderRadius.all(Radius.circular(10))
            ),
            alignment: Alignment.center,
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 hasICon == true ? Image.asset(tapped == true? image1 : image,scale: 1.5,) : SizedBox(),
                Text(text,style: TextStyle(
                  fontFamily: 'Poppins',
                  color: tapped == true ?  Palette.cultured : Palette.spanishGrey,
                  fontSize: 10
                ),),
              ],
            ),
          ),
        ),
      ],
    );

  }

  Widget facilities(BuildContext context){
    return Row(
      children: [
        selectionButton(
          MediaQuery.of(context).size.height *0.05,
          MediaQuery.of(context).size.width *0.25,
           "Transport", true,image: "assets/icons/bus.png",
           image1: "assets/icons/busW.png")

      ],
    );
  }
}