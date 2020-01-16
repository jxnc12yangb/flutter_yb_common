import 'package:flutter/material.dart';
import 'package:yb_common/style.dart';
import 'package:yb_common/common/util/PageManager.dart';

/// @author yangbang
/// @create 2019/12/26
/// @Describe
class YBAppBar extends AppBar{

  static const double elevations = 0.5;
  YBAppBar({
    leading,
    title,
    actions,
    flexibleSpace,
    bottom,
    double elevation,
    shape,
    backgroundColor,
    brightness,
    iconTheme,
    actionsIconTheme,
    textTheme,
    centerTitle = true,
  }):super(
    elevation:elevation??elevations,
    leading:leading,
    title:title,
    actions:actions,
    flexibleSpace:flexibleSpace,
    bottom:bottom,
    shape:shape,
    backgroundColor:backgroundColor,
    brightness:brightness,
    iconTheme:iconTheme,
    actionsIconTheme:actionsIconTheme,
    textTheme:textTheme,
    centerTitle:centerTitle,
  );

  static withs(context,{leading,title,titleWidget,finishWidget,press,elevation}){
    return YBAppBar(
        elevation:elevation,
        leading: leading??IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed:() => PageManager.pop(context),
        ),
        centerTitle:true,
        title: titleWidget??Hero(
            tag: title??"",
            child: new Material(
                color: Colors.transparent,
                child: new Text(
                  title??"",
                  style:YBTextStyle.normalText,
                ))),
      actions: <Widget>[
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(right:YBSise.backMargin),
          child: new Material(
            color: Colors.transparent,
            child:new GestureDetector(
                onTap: press??() {
                  Navigator.of(context).pop();
                },
                child: finishWidget),
          ),
        )

      ],
    );
  }

  static withBack(context,{leading,title,titleWidget,press,elevation}){
    return YBAppBar(
        elevation:elevation,
        leading: leading??IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: press??() => PageManager.pop(context),
        ),
        centerTitle:true,
        title: titleWidget??Hero(
            tag: title??"",
            child: new Material(
                color: Colors.transparent,
                child: new Text(
                  title??"",
                  style:YBTextStyle.normalText,
                )))
    );
  }

  static Widget withBackNoTitle(context,{press}){
    return YBAppBar(
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back),
          onPressed: press??() => Navigator.of(context).pop(),
        ),
        centerTitle:true,
    );
  }

  static Widget withFinishNoTitle(context,{finishWidget,press,elevation}){
    return YBAppBar(
      leading:Text(""),
      elevation:elevation,
      centerTitle:true,
      actions: <Widget>[
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(right:YBSise.backMargin),
          child: new Material(
            color: Colors.transparent,
            child:new GestureDetector(
                onTap: press??() {
                  PageManager.pop(context);
                },
                child:finishWidget),
          ),
        )

      ],
    );
  }

  static Widget withFinish(context,{title,finishWidget,press}){
    return YBAppBar(
      centerTitle:true,
      title: new Hero(
          tag: title,
          child: new Material(
              color: Colors.transparent,
              child: new Text(
                title,
                style:YBTextStyle.normalText,
              ))),
      actions: <Widget>[
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(right:YBSise.backMargin),
          child: new Material(
            color: Colors.transparent,
            child:new GestureDetector(
                onTap: press??() {
                  Navigator.of(context).pop();
                },
                child: finishWidget),
          ),
        )

      ],
    );
  }

}
