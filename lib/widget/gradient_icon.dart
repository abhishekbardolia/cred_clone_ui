import 'package:cred_ui/utils/Constants.dart';
import 'package:flutter/material.dart';

class GradientIcon extends StatelessWidget {
  const GradientIcon({Key? key,required this.icon}) : super(key: key);
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      child: Icon(icon,color: Colors.white,),
            shaderCallback: (Rect bounds){
              final Rect rect=const Rect.fromLTRB(0, 0, 10, 10);
              return gradient.createShader(rect);
            });
  }
}


