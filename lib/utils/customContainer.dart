import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final child;
  const CustomContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: child,),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            offset:const Offset(5, 5),
            color: Colors.grey.shade500,
            blurRadius: 15,
            spreadRadius: 10
          ),
        const  BoxShadow(
              offset: Offset(-5, -5),
              color: Colors.white,
              blurRadius: 15,
              spreadRadius: 10
          )
        ]
      ),


    );
  }
}
