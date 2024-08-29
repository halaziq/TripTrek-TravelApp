import 'package:flutter/cupertino.dart';
import 'package:trip_trek/entities/styles/palettes.dart';

class SelectionButton extends StatelessWidget {

  const SelectionButton({super.key});

  @override
  Widget build(BuildContext context) {
    bool tapped = false;
    return GestureDetector(
      onTap: () {
        
      },
      child: Row(
        children: [
          Container(
           width: MediaQuery.of(context).size.width*0.38,
           height: MediaQuery.of(context).size.height*0.05,
            decoration: BoxDecoration(
              border: Border.all(
                color: Palette.spanishGrey,
                width: 1
              ),
              color: tapped == true ? Palette.erieBlack : Palette.snow,
              borderRadius: const BorderRadius.all(Radius.circular(10))
            ),
            alignment: Alignment.center,
            child:  Text("15 Dec - 20 Dec 2023",style: TextStyle(
              fontFamily: 'Poppins',
              color: tapped == true ?  Palette.cultured : Palette.spanishGrey,
              fontSize: 10
            ),),
          ),
        ],
      ),
    );
  }
}