import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:yb_common/common/localization/yb_string_zh.dart';
import 'package:yb_common/style.dart';

import '../../base.dart';

/// @author yangbang
/// @create 2019/12/17
/// @Describe 自定义checkbox
class CheckWithTitle extends StatelessWidget{

  bool isCheck;
  var onChanged;
  var onTab;
  final String title;
  final String title_tip;
  CheckWithTitle({this.isCheck,this.onChanged,this.title,this.title_tip,this.onTab});

 /* @override
  createState() {
    return CheckWithTitleState();
  }*/

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Checkbox(

        //checkColor: Colors.red,
        activeColor:Colors.green,
        value: isCheck,
        onChanged:(isCheck){
          onChanged(isCheck);
        },
        //value: widget.isCheck,
        /*onChanged: (isCheck){
            widget.onChanged(isCheck);
          }*/),
      RichText(
          text: TextSpan(
            text: title??YBStringZh.me_read_agree,
            style: textStyle.minTextDark,
            children: <TextSpan>[
              TextSpan(
                  text: title_tip??YBStringZh.today_agreement,
                  style: textStyle.minTextPri,
                  recognizer: new TapGestureRecognizer()..onTap = onTab
              ),
            ],)
      ),
    ]
    );
  }
}

class NoPaddingCheckbox extends StatelessWidget {
  final bool isMarked;
  final Function(bool newValue) onChange;
  final double size;

  NoPaddingCheckbox({
    @required this.isMarked,
    @required this.onChange,
    this.size = 24,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: size, maxWidth: size),
      child: RawMaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        child: Icon(_getIconData(), size: size),
        onPressed: () => onChange(!isMarked),
      ),
    );
  }

  IconData _getIconData() {
    if (isMarked) {
      return Icons.check_box;
    }

    return Icons.check_box_outline_blank;
  }
}

/*
class CheckWithTitleState extends State<CheckWithTitle>{

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Checkbox(
          checkColor: Colors.green,
          //value: widget.isCheck,
          */
/*onChanged: (isCheck){
            widget.onChanged(isCheck);
          }*//*
),
      RichText(
          text: TextSpan(
            text: widget.title??YBStringZh.me_read_agree,
            style: YBConstant.minTextDark,
            children: <TextSpan>[
              TextSpan(
                  text: widget.title_tip??YBStringZh.today_agreement,
                  style: YBConstant.minTextPri,
                  recognizer: new TapGestureRecognizer()..onTap = widget.onTab
              ),
            ],)
      ),
    ]
    );
  }

}*/
