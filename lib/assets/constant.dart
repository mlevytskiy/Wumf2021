import 'package:flutter/cupertino.dart';

const String _ic_shadow="assets/ic_shadow.png";
const String _ic_telegram ="assets/ic_telegram.png";

Widget iconTelegram() => _icon(_ic_telegram);
Widget iconShadow() => _icon(_ic_shadow, width: 50.0, height: 50.0);
Widget _icon(String path, {double width = 30.0, double height = 30.0,}) => Image.asset(path, width: width, height: height);