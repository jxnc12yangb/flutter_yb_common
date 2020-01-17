import 'package:flutter/material.dart';
import 'package:yb_common/style.dart';
import 'package:yb_common/common/widget/yb_card_item.dart';

import 'package:yb_common/base.dart';


/// @author yangbang
/// @create 2019/12/17
/// @Describe
class YBButton{

  //单个文本按钮
  static Widget CardButton({onPress,String text,TextStyle styles,margin,shape,double width,height}){
    return YBCardItem(//支付
      shape: shape??new RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4.0))),
      child: new RawMaterialButton(
        onPressed: onPress,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        constraints: BoxConstraints(minWidth:width??double.infinity, minHeight: 0.0),
        child: new Container(
          height: height??45,
          width: width??double.infinity,
          alignment: Alignment.center,
          //padding: EdgeInsets.all(18),
          child: Text(text,style:styles??=textStyle.normalTextWhite),),
      ),
      color: color.primaryValue,
      margin: margin??EdgeInsets.zero,
    );
  }

  //带边框按钮
  static Widget CardButtonWithBorder({elevation,contentColor,bordColor,child,onPress,margin,shape,double width,height}){
    return YBCardItem(
      elevation:elevation??1,//支付
      shape: shape??new RoundedRectangleBorder(side:BorderSide(width:4,color:bordColor??color.primaryValue),borderRadius: BorderRadius.all(Radius.circular(4.0))),
      child: RawMaterialButton(
        onPressed: onPress,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        constraints: BoxConstraints(minWidth:width??double.infinity, minHeight:height??0.0),
        child: child
      ),
      color: contentColor??color.white,
      margin: margin??EdgeInsets.zero,
    );
  }



  static Widget CardItem({contentColor,bordColor,child,onPress,margin,shape,double width}){
    return YBCardItem(//支付
      //shape: shape??new RoundedRectangleBorder(side:BorderSide(width:4,color:bordColor??color.primaryValue),borderRadius: BorderRadius.all(Radius.circular(4.0))),
      child: RawMaterialButton(
          onPressed: onPress,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          constraints: BoxConstraints(minWidth:width??double.infinity, minHeight: 0.0),
          child: child
      ),
      color: contentColor??color.white,
      margin: margin??EdgeInsets.zero,
    );
  }





  /*static Widget CardButtonWith({onPress,String text,TextStyle styles,margin,shape,width}){

    return new YBCardItem(//支付
      shape: shape??new RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4.0))),
      child: new RawMaterialButton(
        onPressed: onPress,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        //constraints: const BoxConstraints(minWidth: double.infinity, minHeight: 0.0),
        child: new Container(
          height: 49,
          width: width,
          alignment: Alignment.center,
          //padding: EdgeInsets.all(18),
          child: new Text(text,style:styles??=textStyle.normalTextWhite),),
      ),
      color: color.primaryValue,
      margin: margin??EdgeInsets.zero,
    );
  }*/


}