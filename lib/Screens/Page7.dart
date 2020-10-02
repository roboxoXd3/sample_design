import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
 class Page7 extends StatelessWidget {
   List<String> wordslist = ['Tired', 'Tiring', 'Relaxed',
     'Relaxing', 'Surprised', 'Surprising'];
   String space = "___________";

   var _formKey = GlobalKey<FormState>();
   // Page7(this._formKey);
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Container(
         height: MediaQuery.of(context).size.height,
         width: MediaQuery.of(context).size.width,
         color: const Color(0xfff3f8f8),
         child: Padding(
           padding: const EdgeInsets.symmetric(horizontal:30.0),
           child: SingleChildScrollView(
             child: Container(
               child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                 children: [


                   SizedBox(height: 10),
                   Text("Use the words given below.",
                     style: TextStyle(
                         color: Colors.blueGrey,
                         fontSize: 15
                     ),
                   ),
                   Container(
                     height: 100,

                     child: GridView.builder(
                         itemCount: wordslist.length,
                         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, childAspectRatio: 5/2),
                         physics: const NeverScrollableScrollPhysics(),
                         itemBuilder: (context , index)
                         {       return Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Container(

                             decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.circular(30)
                             ),
                             child: Center(child: Text(wordslist[index],style: TextStyle(
                               // fontSize: 20
                             ), textAlign: TextAlign.center,)),
                           ),
                         );
                         }),
                   ),
                   SizedBox(height: 20),
                   
                   Container(
                     margin: EdgeInsets.symmetric(horizontal: 10),
                     child: RichText(
                       text: TextSpan(
                         text: 'I feel ',
                         style: TextStyle(color: Colors.blueGrey, fontSize: 15, ),
                         children: <TextSpan>[
                           TextSpan(text: space, style: TextStyle(fontWeight: FontWeight.bold)),
                           TextSpan(text: ' all the time, I need to sleep better'),
                         ],
                       ),
                     ),
                   ),

                   SizedBox(height: 20),

                   Container(
                     margin: EdgeInsets.symmetric(horizontal: 10),
                     child: RichText(
                       text: TextSpan(
                         text: 'I think yoga is a very ',
                         style: TextStyle(color: Colors.blueGrey, fontSize: 15, ),
                         children: <TextSpan>[
                           TextSpan(text: space, style: TextStyle(fontWeight: FontWeight.bold)),
                           TextSpan(text: ' activity. You should try it.'),
                         ],
                       ),
                     ),
                   ),

                   SizedBox(height: 20),

                   Container(
                     margin: EdgeInsets.symmetric(horizontal: 10),
                     child: RichText(
                       text: TextSpan(
                         text: 'This is a ',
                         style: TextStyle(color: Colors.blueGrey, fontSize: 15, ),
                         children: <TextSpan>[
                           TextSpan(text: space, style: TextStyle(fontWeight: FontWeight.bold)),
                           TextSpan(text: "Conclusion, don't you think ?"),
                         ],
                       ),
                     ),
                   ),



                   // Form(
                   //   key: _formKey,
                   //   child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                   //     children: [
                   //       Wrap(
                   //         runAlignment: WrapAlignment.end,
                   //         alignment: WrapAlignment.start,
                   //         children: [
                   //           Text("I feel "),
                   //           Container(
                   //             width: MediaQuery.of(context).size.width/6,
                   //             child: TextFormField(
                   //               validator: (value) {
                   //                 for( var list in wordslist)
                   //                   {
                   //                      if(value==list)
                   //                        {
                   //                          return null;
                   //                        }
                   //                   }
                   //
                   //                   return 'Please enter some text';
                   //
                   //
                   //               },
                   //               onSaved: (value){
                   //
                   //               },
                   //             ),),
                   //           Text(". I need to sleep better.")
                   //
                   //         ],
                   //       ),
                   //       SizedBox(height: 20),
                   //
                   //       Wrap(
                   //         runAlignment: WrapAlignment.end,
                   //         alignment: WrapAlignment.start,
                   //         children: [
                   //           Text("I think yoga is a very "),
                   //           // Text(""),
                   //           Container(
                   //             width: MediaQuery.of(context).size.width/6,
                   //             child: TextFormField(
                   //               validator: (value) {
                   //                 for( var list in wordslist)
                   //                 {
                   //                   if(value==list)
                   //                   {
                   //                     return null;
                   //                   }
                   //                 }
                   //
                   //                 return 'Please enter some text';
                   //
                   //
                   //               },
                   //             ),),
                   //           Text("activity. You should try it.")
                   //
                   //         ],
                   //       ),
                   //
                   //       // Container(
                   //       //   margin: EdgeInsets.symmetric(horizontal: 10),
                   //       //   child: RichText(
                   //       //     text: TextSpan(
                   //       //       text: 'I think yoga is a very ',
                   //       //       style: TextStyle(color: Colors.blueGrey, fontSize: 15, ),
                   //       //       children: <TextSpan>[
                   //       //         TextSpan(text: space, style: TextStyle(fontWeight: FontWeight.bold)),
                   //       //         TextSpan(text: ' activity. You should try it.'),
                   //       //       ],
                   //       //     ),
                   //       //   ),
                   //       // ),
                   //       SizedBox(height: 20),
                   //       // Container(
                   //       //   margin: EdgeInsets.symmetric(horizontal: 10),
                   //       //   child: RichText(
                   //       //     text: TextSpan(
                   //       //       text: 'This is a ',
                   //       //       style: TextStyle(color: Colors.blueGrey, fontSize: 15, ),
                   //       //       children: <TextSpan>[
                   //       //         TextSpan(text: space, style: TextStyle(fontWeight: FontWeight.bold)),
                   //       //         TextSpan(text: " Conclusion, don't you think "),
                   //       //       ],
                   //       //     ),
                   //       //   ),
                   //       // )
                   //
                   //       Wrap(
                   //         runAlignment: WrapAlignment.start,
                   //         alignment: WrapAlignment.start,
                   //         children: [
                   //           Text("This is a "),
                   //           Container(
                   //             width: MediaQuery.of(context).size.width/6,
                   //             child: TextFormField(
                   //               validator: (value) {
                   //                 for( var list in wordslist)
                   //                 {
                   //                   if(value==list)
                   //                   {
                   //                     return null;
                   //                   }
                   //                 }
                   //
                   //                 return 'Please enter some text';
                   //
                   //
                   //               },
                   //             ),),
                   //           Text("Conclusion, don't you think ?")
                   //
                   //         ],
                   //       ),
                   //     ],
                   //   ),
                   // ),

                 ],
               ),
             ),
           ),
         ),
       ),
     );
   }
 }
