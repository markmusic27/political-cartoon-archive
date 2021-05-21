import 'package:flutter/material.dart';

const kScaffoldBackgroundColor = Color(0xffC8AE98);
const kDarkColor = Color(0xff323228);

const kDefaultTextStyle = TextStyle(
  fontFamily: "Square",
  color: kDarkColor,
);

const kHeader1 = TextStyle(fontSize: 80);

final kHeader2 = TextStyle(fontSize: 25, color: kDarkColor.withOpacity(0.8));

const TextTheme kTextTheme = TextTheme(
  headline1: kDefaultTextStyle,
  headline2: kDefaultTextStyle,
  headline3: kDefaultTextStyle,
  headline4: kDefaultTextStyle,
  headline5: kDefaultTextStyle,
  headline6: kDefaultTextStyle,
  subtitle1: kDefaultTextStyle,
  subtitle2: kDefaultTextStyle,
  bodyText1: kDefaultTextStyle,
  bodyText2: kDefaultTextStyle,
  caption: kDefaultTextStyle,
  button: kDefaultTextStyle,
  overline: kDefaultTextStyle,
);
