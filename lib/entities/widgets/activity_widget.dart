import 'package:flutter/cupertino.dart';
import 'package:trip_trek/entities/styles/palettes.dart';

class ActivityWidget extends StatelessWidget {
  const ActivityWidget
({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width*0.54,
          decoration: BoxDecoration(
            border: Border.all(
              color: Paletts.spanishGrey,
              width: 1
            ),
            borderRadius: BorderRadius.all(Radius.circular(25)),
          ),
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(
                  top: MediaQuery.of(context).size.height*0.003,
                  left: MediaQuery.of(context).size.width *0.01,
                  right: MediaQuery.of(context).size.width *0.01,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  
                  child: Image.asset("assets/images/Frame 92973297.png",
                                ),
                ),
              ),
             
            ],),
        ),
      ],
    );
  }
}