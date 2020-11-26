import 'package:flutter/material.dart';

class BolhaMensagem extends StatelessWidget {
  final String message;

  BolhaMensagem(this.message);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).accentColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            message,
            style: TextStyle(
              color: Theme.of(context).accentTextTheme.headline1.color,
            ),
          ),
          width: 200,
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 16,
          ),
          margin: EdgeInsets.symmetric(
            vertical: 4,
            horizontal: 6,
          ),
        ), 
      ],
    );
  }
}