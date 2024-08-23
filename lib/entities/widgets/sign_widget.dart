import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trip_trek/entities/routes/routes.dart';
import 'package:trip_trek/entities/styles/palettes.dart';

class SignWidget extends StatelessWidget {
  final String question;
  final String signType;
  final void Function() route;
  const SignWidget ({
    required this.question,
    required this.signType,
    required this.route,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: MediaQuery.of(context).size.width *0.9,
        child: Column(children: [
                    Padding(
                      padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height *0.01,
                      bottom: MediaQuery.of(context).size.height *0.02),
                      child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              color: Palette.erieBlack,
                              height: 1,
                              width: MediaQuery.of(context).size.width*0.39,
                            ),
                            const Text('OR', style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 13,
                              fontStyle: FontStyle.normal
                            ),),
                            Container(
                              color: Palette.erieBlack,
                              height: 1,
                              width: MediaQuery.of(context).size.width*0.39,
                            ),
                          ],
                         ),
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height*0.06,
                          width: MediaQuery.of(context).size.width*0.17,
                        
                          child: 
                           ElevatedButton(
                            onPressed: (){},
                            style: ElevatedButton.styleFrom(
                            backgroundColor: Palette.snow,
                            foregroundColor: Palette.snow,
                            elevation: 0,
                            disabledBackgroundColor: Palette.snow,
                            side: const BorderSide(
                              color: Palette.spanishGrey,
                              width: 0.5
                            ),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10))
                            )
                            
                            
                            ),
                             child: Image.asset("assets/icons/google.png",
                                                       height: MediaQuery.of(context).size.height*0.05,
                                                       width: MediaQuery.of(context).size.width*0.05,
                                                       scale: 1.3,
                                                       ),
                           ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width*0.05
                        ),
                     
                        SizedBox(
                          height: MediaQuery.of(context).size.height*0.06,
                          width: MediaQuery.of(context).size.width*0.17,
                        
                          child: 
                           ElevatedButton(
                            onPressed: (){},
                            style: ElevatedButton.styleFrom(
                            backgroundColor: Palette.snow,
                            foregroundColor: Palette.snow,
                            elevation: 0,
                            disabledBackgroundColor: Palette.snow,
                            side: const BorderSide(
                              color: Palette.spanishGrey,
                              width: 0.5
                            ),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10))
                            )
                            
                            
                            ),
                             child: Image.asset("assets/icons/x.png",
                                                       height: MediaQuery.of(context).size.height*0.05,
                                                       width: MediaQuery.of(context).size.width*0.05,
                                                       scale: 1.3,
                                                       ),
                           ),
                        ),
                     
                     
                                         ],),
                 Padding(
                   padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.03),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Text(question,
                       style: const TextStyle(
                        color: Palette.spanishGrey,
                        fontFamily: 'Poppins',
                        fontSize: 12
                       ),
                       textAlign: TextAlign.end,),
                       TextButton(
                        onPressed: route,
                        child:  Text(signType, 
                        style: const TextStyle(
                        color: Palette.erieBlack,
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.w600
                        
                       ),
                       textAlign: TextAlign.start,
                        ))
                   
                    ],
                                   ),
                 )
        ],),
        
      ),
    );
  }
}