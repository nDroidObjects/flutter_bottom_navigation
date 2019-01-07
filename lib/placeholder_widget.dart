import 'package:flutter/material.dart';

class PlaceholderWidget extends StatelessWidget {
  final Color color;
  final String message;
  final String image;

  PlaceholderWidget(this.color, this.message, this.image);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text(message), Image.asset("assets/$image")],
        ),
      ),
    );
  }
}
