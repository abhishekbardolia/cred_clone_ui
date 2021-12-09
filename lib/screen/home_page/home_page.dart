import 'package:cred_ui/utils/Constants.dart';
import 'package:cred_ui/widget/card_details.dart';
import 'package:cred_ui/widget/gradient_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: appbar,
      bottomNavigationBar: bottomNavigationBar,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          child: Container(
            width: double.infinity,
            color: kBackgroundColor,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Hello,Androidsutra", style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 10,),
                Text("here are todays\nrecommended actions for you",
                  style: TextStyle(
                    color: Colors.grey,
                  ),),
                SizedBox(height: 20,),

                //Carddetails
                CardDetails()
              ],
            ),
          ),
        ),
      ),
    );
  }

  //Cred Profile AppBar
  //In this there is only one rounded corners
  //The ClipRRect widget in flutter is used to clips its child using a rounded rectangle.
  //ClipRect and is used to Clip a Rectangle portion of the child widget but with rounded corners
  //Definition taken from https://www.geeksforgeeks.org/cliprrect-widget-in-flutter/

  final AppBar appbar=AppBar(
    toolbarHeight: 120,
    backgroundColor: kPrimaryColor,
    leading: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(60),
            child: Image.asset("assets/images/story.jpeg"),
          ),
          const Text(
            'profile',
            style: TextStyle(color: Colors.white, fontSize: 12),
          )
        ],
      ),
    ),

    // 3 Rounded icons in right side
    // 1 of story and other 2 were rounded decorative notifications and channels

    actions: [
      Container(
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                // For Stories
                Container(
                  height: 60,
                  width: 60,
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            width: 1,
                            color: Colors.amber,
                            style: BorderStyle.solid)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child:
                      Image.asset("assets/images/story.jpeg"),
                    ),
                  ),
                ),
                const Text(
                  'stories',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                )
              ],
            ),
            const SizedBox(
              width: 20,
            ),

            // Always make it common if you are reusing the widget or any other stuffs
            // For Notifications
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  child: Container(
                      decoration: roundCredIconDecoration,
                      child: const GradientIcon(icon: Icons.notifications)),
                ),
                const Text(
                  'notifications',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                )
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  child: Container(
                      decoration: roundCredIconDecoration,
                      child: const GradientIcon(
                          icon: Icons.control_camera_rounded)),
                ),
                const Text(
                  'control',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                )
              ],
            ),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
      )
    ],
  );

  BottomNavigationBar bottomNavigationBar=BottomNavigationBar(
    backgroundColor: kPrimaryColor,
    selectedItemColor: iconsColors,
    selectedFontSize: 12,
    showSelectedLabels: true,
    showUnselectedLabels: true,
    unselectedItemColor: unSelectedItem,
    items: const [
      BottomNavigationBarItem(
          icon: Icon(Icons.home),

          // Here we need to initialize background color otherwise it will take white as a background.
          backgroundColor: Color(0xFF1B1F22),
          label: "home"),
      BottomNavigationBarItem(
          icon: Icon(Icons.credit_card),
          label: "cards"),
      BottomNavigationBarItem(
          icon: Icon(Icons.money),
          label: "money"),
      BottomNavigationBarItem(
          icon: Icon(Icons.money),
          label: "money"),
    ],
  );
}
