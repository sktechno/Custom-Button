import 'package:flutter/material.dart';

import 'color_const.dart';


class Button extends StatefulWidget {
  final String text;
  @required
  final VoidCallback onPressed;
  @required
  final ButtonType type;

  Button(this.text, {Key key , this.onPressed, this.type}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ButtonState(text, onPressed, type);
  }
}

class _ButtonState extends State {
  final String text;
  final VoidCallback onPressed;
  @required
  final ButtonType type;

  _ButtonState(this.text, this.onPressed, this.type);

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case ButtonType.primary:
        {
          return _getPrimaryButton(text, onPressed);
        }
        break;
      case ButtonType.secondary:
        {
          return _getSecondarButton(text, onPressed);
        }
        break;
      case ButtonType.destructive:
        {
          return _getDestructiveButton(text, onPressed);
        }
        break;
      default:
        {
          return _getPrimaryButton(text, onPressed);
        }
        break;
    }
  }

  Widget _getPrimaryButton(String text, VoidCallback onPressed) {
    return RaisedButton(
      onPressed: onPressed,
      child: Container(
        width: 200,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: WHITE_COLOR,
                fontWeight: FontWeight.w500,
                fontSize: 17),
            softWrap: false,
          ),
        ),
      ),
      textColor: WHITE_COLOR,
      color: BLUE_COLOR,
      elevation: 0,
      shape: Border.all(
        color: BORDER_COLOR,
        width: 1,
        style: BorderStyle.solid,
      ),
      padding: EdgeInsets.only(left: 16, top: 12, right: 16, bottom: 12),
    );
  }

  Widget _getSecondarButton(String text, VoidCallback onPressed) {
    return RaisedButton(
      onPressed: onPressed,
      child: Container(
        width: 200,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: TEXT_BLACK,
                fontWeight: FontWeight.w500,
                fontSize: 17),
            softWrap: false,
          ),
        ),
      ),
      textColor: WHITE_COLOR,
      color: WHITE_COLOR,
      elevation: 0,
      shape:
          Border.all(color: BORDER_COLOR, width: 1, style: BorderStyle.solid),
      padding: EdgeInsets.only(left: 16, top: 12, right: 16, bottom: 12),
    );
  }

  Widget _getDestructiveButton(String text, VoidCallback onPressed) {
    return RaisedButton(
      onPressed: onPressed,
      child: Container(
        width: 200,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: WHITE_COLOR,
                fontWeight: FontWeight.w500,
                fontSize: 17),
            softWrap: false,
          ),
        ),
      ),
      textColor: WHITE_COLOR,
      color: RED_COLOR,
      elevation: 0,
      shape:
      Border.all(color: BORDER_COLOR, width: 1, style: BorderStyle.solid),
      padding: EdgeInsets.only(left: 16, top: 12, right: 16, bottom: 12),
    );
  }
}

enum ButtonType {
  // the enum values
  primary,
  secondary,
  destructive
}
