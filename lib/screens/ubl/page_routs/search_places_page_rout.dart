import 'package:flutter/material.dart';

class SearchplacesPageRout extends PageRouteBuilder {
  final Widget widget;

  SearchplacesPageRout({this.widget})
      : super(
            transitionDuration: Duration(seconds: 1),
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> seeAnimation,
                Widget child) {
              animation =
                  CurvedAnimation(parent: animation, curve: Curves.easeInCubic);
              return ScaleTransition(
                alignment: Alignment.bottomCenter,
                scale: animation,
                child: child,
              );
            },
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> seeAnimation) {
              return widget;
            });
}
