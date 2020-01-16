import 'package:flutter/material.dart';
import 'package:yb_common/common/style/yb_style.dart';

/// card item
class YBCardItem extends StatelessWidget {
  final Widget child;
  final EdgeInsets margin;
  final Color color;
  final RoundedRectangleBorder shape;
  final double elevation;

  YBCardItem(
      {@required this.child,
      this.margin,
      this.color,
      this.shape,
      this.elevation = 1});

  @override
  Widget build(BuildContext context) {
    EdgeInsets margin = this.margin;
    RoundedRectangleBorder shape = this.shape;
    Color color = this.color;
    margin ??=
        EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0, bottom: 10.0);
    shape ??= new RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4.0)));
    color ??= YBColors.cardWhite;
    return new Card(
        elevation: elevation,
        shape: shape,
        color: color,
        margin: margin,
        child: child);
  }
}

class YBLineCardItem extends StatelessWidget {
  final Widget child;
  final EdgeInsets margin;
  final Color color;
  final RoundedRectangleBorder shape;
  final double elevation;

  YBLineCardItem(
      {@required this.child,
        this.margin,
        this.color,
        this.shape,
        this.elevation = 1});

  @override
  Widget build(BuildContext context) {
    EdgeInsets margin = this.margin;
    RoundedRectangleBorder shape = this.shape;
    Color color = this.color;
    margin ??=
        EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0, bottom: 10.0);
    shape ??= new RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4.0)));
    color ??= YBColors.cardWhite;
    return new Card(
        elevation: elevation,
        shape: shape,
        color: color,
        margin: margin,
        child: child);
  }
}


