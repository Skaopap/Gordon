import 'package:flutter/material.dart';

const _primaryColor = 0XFF2E2F33;
const _primaryDarkColor =0XFF1B1B1C;
const _textColor = 0XFFFFFFFF;
const _accentColor = 0XFF2C8BFD;

  const MaterialColor primaryColor = MaterialColor(
    _primaryColor,
    <int, Color>{
      50: Color(_primaryColor)
    },
  );

  const MaterialColor primaryDarkColor = MaterialColor(
    _primaryDarkColor,
    <int, Color>{
      50: Color(_primaryDarkColor)
    },
  );

  const MaterialColor textColor = MaterialColor(
    _textColor, 
    <int, Color>{
      50: Color(_textColor)
    },
  );

  const MaterialColor accentColor = MaterialColor(
    _accentColor,
    <int, Color>{
      50: Color(_accentColor)
    },
  );


