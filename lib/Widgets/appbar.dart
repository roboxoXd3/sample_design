import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  String page;
  String title;
  String subtitle;
  int totalpage;
  int recentpage;
  MyAppBar({this.page, this.title, this.subtitle, this.totalpage, this.recentpage});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 10,),
              Text(
                 page,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,

                ),
              ),
              SizedBox(height: 10,),
              Text(
                title,
                style: TextStyle(
                  fontSize: 22,
                    fontFamily: 'Montserrat',
color: Colors.black
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10,),
              Text(
                  subtitle,
                style: TextStyle(
                  fontSize: 17,
                    color:Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),


            ],
          ),
        ),


      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(200);
}
