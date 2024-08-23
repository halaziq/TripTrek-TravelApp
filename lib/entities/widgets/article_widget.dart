import 'package:flutter/cupertino.dart';
import 'package:trip_trek/entities/styles/palettes.dart';

class ArticleWidget extends StatelessWidget {
  const ArticleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: MediaQuery.of(context).size.height *0.29,
          width: MediaQuery.of(context).size.width *0.77,
          decoration: BoxDecoration(
            border: Border.all(
              color: Palette.spanishGrey,
              width: 1
            ),
            borderRadius: const BorderRadius.all(Radius.circular(25))
          ),
          child: Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [
                Container(
                  height: MediaQuery.of(context).size.height* 0.18,
                  width: MediaQuery.of(context).size.width*0.77,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)
                    ),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Image.network("https://th.bing.com/th/id/OIP.hlDPcXXEwa4lAvQRu8x3QQHaE7?rs=1&pid=ImgDetMain",
                  fit: BoxFit.cover,),
                ),

                Padding(
                  padding:  EdgeInsets.only(
                    left: MediaQuery.of(context).size.width*0.035,
                  top: MediaQuery.of(context).size.height*0.007 ),
                  child: const Text("Merapi Mountain erupts again",style: TextStyle(
                    fontFamily: 'Poppins',
                      fontSize: 13,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500
                  ),),
                ),
                Padding(
                  padding:  EdgeInsets.only(
                     left: MediaQuery.of(context).size.width*0.035,
                  
                  ),
                  child: const Text("Adams",style: TextStyle(
                    fontFamily: 'Poppins',
                      fontSize: 11,
                      fontStyle: FontStyle.normal,
                  ),),
                ),
                Padding(
                  padding:  EdgeInsets.only(
                     left: MediaQuery.of(context).size.width*0.035,
                  top: MediaQuery.of(context).size.height*0.008,
                  bottom: MediaQuery.of(context).size.height*0.005
                  ),
                  child: const Text("9 Dec 2023",style: TextStyle(
                     fontFamily: 'Poppins',
                          fontSize: 9,
                          color: Palette.erieBlack,
                          fontStyle: FontStyle.normal,
                  ),),
                )
            
            ],),
          ),
        ),
      ],
    );
  }
}