import 'package:flutter/cupertino.dart';
import 'package:trip_trek/entities/styles/palettes.dart';

class RecommendedActivityWidget extends StatelessWidget {
  const RecommendedActivityWidget
({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.15,
      decoration:  BoxDecoration(
        color: Palette.snow,
        borderRadius: const BorderRadius.all(Radius.circular(25)),
        border: Border.all(
          color: Palette.spanishGrey,
          width: 1
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding:  EdgeInsets.all(MediaQuery.of(context).size.width*0.009),
            child: Container(
                width: MediaQuery.of(context).size.width*0.23,
                height: MediaQuery.of(context).size.height*0.15,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25))
                ),
                child: Image.network("https://media-cdn.tripadvisor.com/media/photo-s/14/e4/e0/c3/img-20180927-131442-largejpg.jpg",
                fit: BoxFit.cover,),
            ),
          ),

          Padding(
            padding:  EdgeInsets.only(
              left: MediaQuery.of(context).size.width *0.02
              ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text("Karimun Jawa Island",style: TextStyle(
                  fontFamily: 'Poppins',
                    fontSize: 13,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500
                ),),
                Container(
                    height: MediaQuery.of(context).size.height*0.037,
                    width: MediaQuery.of(context).size.width *0.15,
                    decoration:  BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      border: Border.all(
                        color: Palette.spanishGrey,
                        width: 0.7
                      ),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                    Image.asset("assets/icons/location.png"),
                    const Text("Jepara, Central Java",style: TextStyle(
                       fontFamily: 'Poppins',
                    fontSize: 10,
                    fontStyle: FontStyle.normal,
                    ),),
                    Padding(
                    padding:  EdgeInsets.only(
                      right: MediaQuery.of(context).size.width*0.01,
                       left: MediaQuery.of(context).size.width*0.09),
                      child: Image .asset("assets/icons/Vector.png",scale: 1.5,),
                    ),
                      Padding(
                        padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.005),
                        child: const Text("4.6",style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          fontSize: 12
                        
                        ),),
                      ),

                  ],
                )
              ],
            ),
          )

      ],),
    );
  }
}