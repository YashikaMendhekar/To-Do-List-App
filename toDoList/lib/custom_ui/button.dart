import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Color backgroundColor;
  final Text buttonText;
  final Color splashColor;
  final Function onPressed;

  Button({
    this.backgroundColor,
    this.buttonText,
    this.splashColor,
    this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      padding: EdgeInsets.only(left: 20.0, right: 20.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              color: backgroundColor,
              //borderSide: BorderSide(color: Colors.redAccent),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              splashColor: splashColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                    child: buttonText,
                  ),
                ],
              ),
              onPressed: onPressed,
            ),
          )
        ],
      ),
    );
  }
}
