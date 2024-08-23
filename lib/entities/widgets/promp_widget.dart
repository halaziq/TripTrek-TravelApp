import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';
import 'package:trip_trek/entities/styles/palettes.dart';

class PromoWidget extends StatelessWidget {
  const PromoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.15,
      decoration:  const BoxDecoration(
        color: Palette.blue,
        borderRadius:  BorderRadius.all(Radius.circular(25)),
        
      ),
      child: Stack(
        children: [
          ClipPath(
            clipper: ProsteBezierCurve(
              position: ClipPosition.right,
              list: [
               
                BezierCurveSection(
                  start: Offset(MediaQuery.of(context).size.width*0.45 -20, 75),
                  top: Offset(MediaQuery.of(context).size.width*0.45 - 70, 37.5),
                  end: Offset(MediaQuery.of(context).size.width*0.45 - 30, 0),
                ),
              ],
            ),
            
            child: Container(
              width: MediaQuery.of(context).size.width*0.45,
              height: MediaQuery.of(context).size.height*0.15,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  bottomLeft: Radius.circular(25)
                )
              ),
              child: Image.network("https://i.pinimg.com/564x/52/25/fe/5225fefe6566e99b5758c0d6b872bd73.jpg",fit: BoxFit.cover,),
            ),
          ),
              Padding(
                padding:  EdgeInsets.only(
                  left:MediaQuery.of(context).size.width*0.41,
                  top: MediaQuery.of(context).size.height*0.02),
                child:  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                const Text("Promo Partner",style: TextStyle(
                  fontFamily: 'Poppins',
                        fontSize: 15,
                        color: Palette.snow,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                
                ),),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.01,
                ),

                 const  Text("With various banks, brands and tourism bodies.",style: TextStyle(
                  fontFamily: 'Poppins',
                        fontSize: 10,
                        color: Palette.snow,
                        fontStyle: FontStyle.normal,
                
                ),),
                 SizedBox(
                  height: MediaQuery.of(context).size.height*0.01,
                ),
                 const Text("*Terms and conditions apply",style: TextStyle(
                  fontFamily: 'Poppins',
                        fontSize: 8,
                        color: Palette.snow,
                        fontStyle: FontStyle.normal,
                
                ),),
                            ],
                          ),
              )
    
      
        ],
      ),
    );
  }
}