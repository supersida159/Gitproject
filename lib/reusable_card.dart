import 'package:flutter/material.dart';
import 'Constants.dart';
class Reusablecard extends StatelessWidget {
  Reusablecard({Key? key,required this.colour,this.cardChild,this.onPress}) : super(key: key);
  final Color colour;
  final Widget? cardChild;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
        child: cardChild,
      ),
    );
  }
}

class createnewicon extends StatelessWidget {
  createnewicon({this.icon,required this.label});

  final IconData? icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 90,
        ),
        SizedBox(
          height: 5,
        ),
        Text(label,style: labeltextstyle)
      ],
    );
  }
}
