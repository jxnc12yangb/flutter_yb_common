import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yb_common/style.dart';

/// @author yangbang
/// @create 2019/12/17
/// @Describe
class NormalText extends Text{//正文字体
  NormalText(String data) : super(data,style:YBTextStyle.normalText);
}

class NormalTextDark extends Text{//正文字体
  NormalTextDark(String data) : super(data,style:YBTextStyle.normalTextDark);
}

class NormalWhiteText extends Text{//正文字体
  NormalWhiteText(String data) : super(data,style:YBTextStyle.normalTextWhite);
}

class MiddleText extends Text{
  MiddleText(String data):super(data,style:YBTextStyle.middleText);
}
class MiddleTextDark extends Text{
  MiddleTextDark(String data):super(data,style:YBTextStyle.middleTextDark);
}
class MiddleWhiteText extends Text{
  MiddleWhiteText(String data):super(data,style:YBTextStyle.middleTextWhite);
}

class LargeText extends Text{//标题字体
  LargeText(String data) : super(data,style:YBTextStyle.largeText);
}

class LargeTextBold extends Text{
  LargeTextBold(String data) : super(data,style:YBTextStyle.largeTextBold);
}

class LargeLargeText extends Text{//大字体
  LargeLargeText(String data) : super(data,style:YBTextStyle.largeLargeText);
}

class BigLargeText extends Text{//超大大字体
  BigLargeText(String data) : super(data,style:YBTextStyle.bigLargeText);
}

class SmallText extends Text{//小字体
  SmallText(String data) : super(data,style:YBTextStyle.smallText);
}

class SmallTextDark extends Text{//小字体
  SmallTextDark(String data) : super(data,style:YBTextStyle.smallTextDark);
}

class SmallTextDarkLike extends Text{//小字体
  SmallTextDarkLike(String data) : super(data,style:YBTextStyle.smallTextDarkLike);
}

class MinText extends Text{//小字体
  MinText(String data) : super(data,style:YBTextStyle.minText);
}

class MinTextDark extends Text{
  MinTextDark(String data) : super(data,style:YBTextStyle.minTextDark);
}

class MinTextDarkLike extends Text{
  MinTextDarkLike(String data) : super(data,style:YBTextStyle.minTextDarkLike);
}

class MinTextPri extends Text{//小字体主题风格
  MinTextPri(String data) : super(data,style:YBTextStyle.minTextPri);
}

class TextWithIcon {

  static Widget of({tag,Widget icon,Widget text}){

    return GestureDetector(
      onTap:tag,
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        icon,
        SizedBox(width: 5,),
        text,
      ],
    ),);
  }



}





