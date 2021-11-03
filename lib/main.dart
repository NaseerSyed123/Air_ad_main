import 'dart:async';
import 'package:air_ad/screens/ubl/User_Register.dart';
import 'package:air_ad/screens/ubl/login.dart';
import 'package:flutter/material.dart';
import 'package:air_ad/screens/ubl/End_User/Library/Language_Library/lib/easy_localization_delegate.dart';
import 'package:air_ad/screens/ubl/End_User/Library/Language_Library/lib/easy_localization_provider.dart';

/// Run first apps open
void main() => runApp(EasyLocalization(child: myApp()));

/// Set orienttation
class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data;
    return (MaterialApp(
      title: "Air Ad",
      home: UserRegister(),
      debugShowCheckedModeBanner: false,
    ));
  }
}

/// Component UI
