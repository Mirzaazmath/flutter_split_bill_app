import 'package:flutter/material.dart';

// BACKGROUND GRADIENT CONTAINER
class BackGroundWidget extends StatelessWidget {
  Widget child;
   BackGroundWidget({super.key,required this.child});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration:const  BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft ,
              colors: [
                Color(0xff121921),
                Color(0xff455565),
                Color(0xff121921),]
          )
      ),
      child: child,
    );
  }
}
