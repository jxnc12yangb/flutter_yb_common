import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yb_common/base.dart';
import 'package:yb_common/style.dart';
import 'package:yb_common/common/widget/yb_text_widget.dart';

/// @author yangbang
/// @create 2019/12/16
/// @Describe

class YBProgressBar extends StatefulWidget {
  List<States> data = new List<States>();
  String tip;
  double circle;

  YBProgressBar(this.data,{this.tip,this.circle=13.0});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return YBProgressBarState();
  }
}

class YBProgressBarState extends State<YBProgressBar> {

  @override
  Widget build(BuildContext context) {
    double circle = widget.circle;
    BoxDecoration norDecro = BoxDecoration(
        shape: BoxShape.circle,
        //borderRadius: new BorderRadius.circular((20.0)),
        color:color.primaryValue
    );
    BoxDecoration errorDecro = BoxDecoration(
        shape: BoxShape.circle,
        //borderRadius: new BorderRadius.circular((20.0)),
        color:Colors.red
    );
    BoxDecoration darkDecro = BoxDecoration(
        shape: BoxShape.circle,
        //borderRadius: new BorderRadius.circular((20.0)),
        color:Colors.black12
    );
    return Column(children: <Widget>[
      Row(children: <Widget>[
        SizedBox(width:size.padding,),
        Container(decoration:widget.data[0].isPass?norDecro:errorDecro,width:circle,height:circle,),
        Expanded(child:Container(height: 2,color:color.primaryValue,),),
        Container(decoration:widget.data[1].ok?norDecro:errorDecro,width:circle,height:circle,),
        Expanded(child: Container(height:2,color:widget.data[1].isPass?color.primaryValue:Colors.black12,)),
        Container(decoration:widget.data[1].isPass?widget.data[2].ok?norDecro:errorDecro:darkDecro,width:circle,height:circle,),
        SizedBox(width:size.padding,),
      ],),
      SizedBox(height: size.SH[17],),
      Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: <Widget>[
        MinText(widget.data[0].title),
        Text(widget.data[1].title,style:TextStyle(fontSize:textStyle.minTextSize,color:widget.data[1].ok?color.mainTextColor:Colors.red),),
        MinText(widget.data[2].title),
      ],),
      widget.tip==null?SizedBox(height:size.SH[38],):Container(margin:EdgeInsets.only(top:size.padding,bottom:size.padding),padding:EdgeInsets.all(size.padding),child: MinTextDark(widget.tip),color: Color(0xFFF4F5F6),)
    ],);
  }
}

class States {
  bool isPass;
  bool ok;
  String title;
  String tip;
  States({this.isPass,this.ok,this.title, this.tip});
}