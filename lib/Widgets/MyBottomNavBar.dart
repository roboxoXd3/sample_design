import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freelance_app/Screens/Page8.dart';

 class MyBottomNavBar extends StatefulWidget {
   Function backTap;
   Function frontTap;
   MyBottomNavBar({this.backTap, this.frontTap});
  @override
  _MyBottomNavBarState createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {

   @override
   Widget build(BuildContext context) {
     return Material(
       elevation: 50,
       child: Container(
         color: const Color(0xfff3f8f8),
         height: 80,
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             RawMaterialButton(
               onPressed: widget.backTap,
               elevation: 10.0,
               fillColor: Colors.white,
               child: Icon(
                 Icons.arrow_back,color: Colors.purple,
                 size: 35.0,
               ),
               padding: EdgeInsets.all(15.0),
               shape: CircleBorder(),
             ),
             Flexible(
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(

                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(30),
                     color: Colors.white,

                   ),

                   child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       Flexible(
                         child: GestureDetector(
                           child: Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Image.asset("assets/reading.png", color: Colors.orange,),
                           ),
                           onTap: (){

                           },
                         ),
                       ),
                       Flexible(
                         child: GestureDetector(
                           child: Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Image.asset("assets/book.png", color: Colors.purple,),
                           ),
                           onTap: (){

                           },
                         ),
                       ),
                       Flexible(
                         child: GestureDetector(
                           child: Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Image.asset("assets/binoculars.png", color: Colors.blue,),
                           ),
                           onTap: (){},
                         ),
                       ),

                     ],
                   ),
                 ),
               ),
             ),
             RawMaterialButton(
               onPressed: widget.frontTap,
               elevation: 10.0,
               fillColor: Color(0xff826ddd),
               child: Icon(
                 Icons.arrow_forward,color: Colors.white,
                 size: 35.0,
               ),
               padding: EdgeInsets.all(15.0),
               shape: CircleBorder(),
             )

           ],
         ),
       ),
     );
   }
}
