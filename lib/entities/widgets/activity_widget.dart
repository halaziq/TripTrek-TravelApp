import 'package:flutter/cupertino.dart';
import 'package:trip_trek/entities/routes/routes.dart';
import 'package:trip_trek/entities/styles/palettes.dart';

class ActivityWidget extends StatelessWidget {
  final bool isPopular;
  const ActivityWidget
({
  this.isPopular = true,
  super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> Navigator.pushNamed(context, Routes.activiyDetails),
      child: Row(
        children: [
          Container(
            width: isPopular == true ?  MediaQuery.of(context).size.width*0.64: MediaQuery.of(context).size.width*0.5,
            height: MediaQuery.of(context).size.height*0.35,
            decoration: BoxDecoration(
              border: Border.all(
                color: Palette.spanishGrey,
                width: 1
              ),
              borderRadius: const BorderRadius.all(Radius.circular(25)),
            ),
            child: Stack(
              children: [
                Padding(
                  padding:  EdgeInsets.only(
                    top: MediaQuery.of(context).size.height*0.003,
                    left: MediaQuery.of(context).size.width *0.01,
                    right: MediaQuery.of(context).size.width *0.01,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.64,
                    height: MediaQuery.of(context).size.height*0.25,
                    clipBehavior: Clip.antiAlias,
                    decoration:  BoxDecoration(
      borderRadius: BorderRadius.circular(25) // Adjust the radius as needed
        ),
                    child: Image.network("https://miro.medium.com/v2/resize:fit:720/format:webp/0*e9ykt0jPSuFNQbfT",
                    fit:BoxFit.cover
                  ),
                  ),
                ),
      
                Padding(
                  padding:  EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.015,
                  left: MediaQuery.of(context).size.width*0.04),
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.037,
                    width: MediaQuery.of(context).size.width *0.15,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Palette.snow
                    ),
                    alignment: Alignment.center,
                    child: const Text('Hiking',style:TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal
                    ))
                  ),
                ),
      
                Padding(
                  padding:  EdgeInsets.only(
                    top: MediaQuery.of(context).size.height*0.265,
                    left: MediaQuery.of(context).size.width*0.03),
                  child: const Text("Semeru Mountain",style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 13,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500
                  ),),
                ),
                Padding(
                  padding:  EdgeInsets.only(
                    top: MediaQuery.of(context).size.height*0.3,
                    left: MediaQuery.of(context).size.width*0.08),
                  child: const Text("Malang, East Java",style: TextStyle(
                  fontFamily: 'Poppins',
                    fontSize: 11,
                    fontStyle: FontStyle.normal,
                  ),),
                ),
      
                Padding(
                  padding:  EdgeInsets.only(
                    top: MediaQuery.of(context).size.height*0.3,
                    left: MediaQuery.of(context).size.width*0.03),
                    
                  child: Image.asset("assets/icons/location.png"),
                ),
                Padding(
                  padding:  EdgeInsets.only(
                    top: isPopular == true? MediaQuery.of(context).size.height*0.285: MediaQuery.of(context).size.height*0.022,
                    left: isPopular == true?  MediaQuery.of(context).size.width*0.49: MediaQuery.of(context).size.width*0.32),
                  child: Image .asset("assets/icons/Vector.png",scale: 1.5,),
                ),
                Padding(
                  padding:  EdgeInsets.only(
                    top: isPopular == true? MediaQuery.of(context).size.height*0.28 : MediaQuery.of(context).size.height*0.018,
                    left: isPopular == true? MediaQuery.of(context).size.width*0.54 : MediaQuery.of(context).size.width*0.37),
                  child:  Text("4.5",style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: isPopular == true ? Palette.erieBlack : Palette.snow,
                    fontFamily: 'Poppins'
                  ),),
                ),
               
              ],),
          ),
        ],
      ),
    );
  }
}