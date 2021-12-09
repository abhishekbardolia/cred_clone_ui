import 'package:flutter/material.dart';


Color kBackgroundColor=const Color(0xFF1F2326);
Color kPrimaryColor=const Color(0xFF1B1F22);
Color shadowColor = const Color(0xFF33373a);
Color iconsColors = const Color(0xFFde8670);
Color unSelectedItem = const Color(0xFF62584c);


BoxDecoration roundCredIconDecoration=BoxDecoration(
  shape: BoxShape.circle,
  boxShadow: customShadow,
);

BoxDecoration cardDecoration1=BoxDecoration(
    color: Color(0xFFffefce),
    borderRadius: BorderRadius.circular(20),
    boxShadow:customShadow);
BoxDecoration cardDecoration2=BoxDecoration(
    color: Color(0xFFffccbc),
    borderRadius: BorderRadius.circular(20),
    boxShadow:customShadow);

LinearGradient gradient=const LinearGradient(colors: [
  Color(0xFFb8816f),
  Color(0xFFde8670),
],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight);



List<BoxShadow> customShadow=[

  // We need to set this accordingly
  // here top left side is white spreaded shadow
  // and black in bottom right shadow
  const BoxShadow(
      color: Colors.white70,
      spreadRadius: -7,
      offset: Offset(-4,-4),
      blurRadius: 9
  ),

  const BoxShadow(
      color: Colors.black,
      spreadRadius: -7,
      offset: Offset(7,7),
      blurRadius: 8
  ),
  BoxShadow(
      color: kBackgroundColor,
      spreadRadius: 0,
      offset: const Offset(0,0),
      blurRadius: 3
  ),
];