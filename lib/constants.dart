import 'package:flutter/material.dart';

const orangColor = Color(0xe67e22);
const blackColor = Color(0x1e272e2);

InputDecoration CustomeInputDec(String label, String hint, prefixIcon) {
  return InputDecoration(
      label: Text(label),
      hintText: hint,
      contentPadding: EdgeInsets.only(left: 20),
      prefixIcon: prefixIcon,
      border: OutlineInputBorder(borderSide: BorderSide.none));
}

final kshadow = BoxShadow(
  color: Colors.grey,
  offset: Offset.zero,
  blurRadius: 3,
);

RaisedButton kbutton(color, text, textcolor, double px, Function function) {
  return RaisedButton(
    color: color,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: px),
    onPressed: () => function(),
    child: Text(
      text,
      style: TextStyle(
        color: textcolor,
        fontSize: 24,
      ),
    ),
  );
}
