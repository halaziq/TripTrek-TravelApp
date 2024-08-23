import 'package:flutter/cupertino.dart';
import 'package:trip_trek/entities/styles/palettes.dart';

class ChooseLocationWidget extends StatelessWidget {
  const ChooseLocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height*0.35,
          width: MediaQuery.of(context).size.width*0.5,
          decoration: BoxDecoration(
            border: Border.all(
              color: Palette.spanishGrey,
              width: 1,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(25)),
          ),
          clipBehavior: Clip.antiAlias,
          child: Image.network("https://thumbs.dreamstime.com/b/borobudur-temple-sunrise-java-indonesia-borobudur-temple-sunrise-java-indonesia-165109614.jpg",
          fit: BoxFit.cover,
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height*0.35,
          width: MediaQuery.of(context).size.width*0.5,
          decoration:  BoxDecoration(
                      color: Palette.erieBlack.withOpacity(0.5),

           
            borderRadius:  const BorderRadius.all(Radius.circular(25)),
          ),
          alignment: Alignment.center,
          child: const Text("Central Java",style: TextStyle(
            color: Palette.snow,
             fontFamily: 'Poppins',
                      fontSize: 13,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
          ),),
        ),


      ],
    );
  }
}