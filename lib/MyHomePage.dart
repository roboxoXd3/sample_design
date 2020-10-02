import 'package:cupertino_progress_bar/cupertino_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:freelance_app/Screens/Page7.dart';
import 'package:freelance_app/Screens/Page8.dart';
import 'package:freelance_app/Widgets/MyBottomNavBar.dart';
import 'package:freelance_app/Widgets/appbar.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  int total = 2;
  PageController pageController = PageController(initialPage: 0);
  int pageChanged=0;


  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    // final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    return Scaffold(
       appBar: MyAppBar(page: "${pageChanged+1} of $total" ,
         title: (pageChanged==0)?"Paula talks about feelings and reactions.": "How are retirees' lives changing?",
         subtitle: (pageChanged==0)?"Instructions, read the sentences, type in the missing words":"Click on the sentences and move them Into correct category",
       recentpage: pageChanged,
       totalpage: total,),
      body: Column(
        children: [
          SizedBox(height: 20,),
          LinearProgressIndicator(
            backgroundColor: Colors.white,
            value: (pageChanged+1)/total,

            valueColor: new AlwaysStoppedAnimation<Color>(Colors.blue),


          ),
          Expanded(
            child: PageView(
              physics:new NeverScrollableScrollPhysics(),
              controller: pageController,
              onPageChanged: (index)
              {
                setState(() {
                  pageChanged = index;
                });
              },
              children: [

                Page7(),
                Page8(),
              ],

            ),
          ),
        ],
      ),
      bottomNavigationBar: MyBottomNavBar(
        backTap: (){
          pageController.animateToPage(pageChanged-1, duration: Duration(microseconds: 250), curve: Curves.bounceInOut);
        },
        frontTap: (){
          // if(_formKey.currentState.validate()){
            pageController.animateToPage(pageChanged+1, duration: Duration(microseconds: 250), curve: Curves.bounceInOut);

          // }
        },
      )
       );


  }
}
