import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yb_common/style.dart';

/// @author yangbang
/// @create 2019/12/16
/// @Describe
class CustomRadio extends StatefulWidget {

  List<RadioModel> sampleData = new List<RadioModel>();
  var pay;
  CustomRadio(this.sampleData,this.pay){
    pay(sampleData[0]);
  }

  var currentSelect;


  @override
  createState() {
    return new CustomRadioState();
  }
}

class CustomRadioState extends State<CustomRadio> {

  //CustomRadioState(this.sampleData);


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    List<Widget> temp = [];

    for(RadioModel model in widget.sampleData){
      temp.add(ListTile(
        onTap: () {
          setState(() {
            widget.sampleData.forEach((element){
              element.isSelected = false;
            });
            model.isSelected = true;
            widget.pay(model);
            //widget.pay(model.pay,model);
          });
        },
        leading: Image(image:AssetImage(model.image)),
        title: Text(model.title),
        trailing: Icon(
          model.isSelected?model.icon:null,
          color: YBColors.primaryValue,
          size: 30,
        ),

      )
      );
      //temp.add(RadioItem(model));
    }

    return Column(
      children:temp,
    );

  }
}

class RadioItem extends StatelessWidget {
  final RadioModel _item;
  RadioItem(this._item);
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.all(15.0),
      child: new Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          new Container(
            height: 10.0,
            width: 50.0,
            child: new Center(
              child: new Text(_item.title,
                  style: new TextStyle(
                      color:
                      _item.isSelected ? Colors.white : Colors.black,
                      //fontWeight: FontWeight.bold,
                      fontSize: 18.0)),
            ),
            decoration: new BoxDecoration(
              color: _item.isSelected
                  ? Colors.blueAccent
                  : Colors.transparent,
              border: new Border.all(
                  width: 1.0,
                  color: _item.isSelected
                      ? Colors.blueAccent
                      : Colors.grey),
              borderRadius: const BorderRadius.all(const Radius.circular(2.0)),
            ),
          ),
          new Container(
            margin: new EdgeInsets.only(left: 10.0),
            child: new RaisedButton(onPressed: (){

            },child: Text(_item.title),),
          )
        ],
      ),
    );
  }
}

class RadioModel {
  bool isSelected;
  String title;
  String image;
  IconData icon;
  int payType;
  RadioModel({this.isSelected,this.title, this.image,this.icon,this.payType});
}