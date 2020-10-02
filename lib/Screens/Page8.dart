import 'package:flutter/material.dart';
import 'package:freelance_app/Widgets/appbar.dart';
import 'package:freelance_app/main.dart';
class Page8 extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
    body: Container(
      width: MediaQuery.of(context).size.width,
      color: const Color(0xfff3f8f8),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SizedBox(height: 40,),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width*0.85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xff826ddd)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("They stay alert by mantaining an active lifestyle", style: TextStyle(
                  color: Colors.white
                ),),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width*0.85,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xffe8e4fc)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                ),
              ),

            SizedBox(height: 20,),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width*0.85,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xff826ddd)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("They stay alert by mantaining an active lifestyle",textAlign: TextAlign.center, style: TextStyle(
                    color: Colors.white
                ),),
              ),
            ),
            SizedBox(height: 20,),
            Container(child: Text("What are people doing?",),),
            SizedBox(height: 40,),
              Container(

                height: 40,
                width: MediaQuery.of(context).size.width*0.85,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("More and more retirees are volunteering"),
                ),
              ),

          ],
          ),
        ),
      ),
    ),
    );
  }
}
