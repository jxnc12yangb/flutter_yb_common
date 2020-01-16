/// @author yangbang
/// @create 2020/1/3
/// @Describe
import 'package:flutter/material.dart';
import 'package:gzx_dropdown_menu/gzx_dropdown_menu.dart';
import 'package:yb_common/common/style/yb_style.dart';

typedef OnItemTap<T> = void Function(T value);

class GZXDropDownHeader extends StatefulWidget {
  final Color color;
  final double borderWidth;
  final Color borderColor;
  TextStyle style;
  TextStyle dropDownStyle;
  final double iconSize;
  final Color iconColor;
  Color iconDropDownColor;

//  final List<String> menuStrings;
  final double height;
  final double dividerHeight;
  final Color dividerColor;
  final GZXDropdownMenuController controller;
  final OnItemTap onItemTap;
  final List<GZXDropDownHeaderItem> items;
  final GlobalKey stackKey;

  GZXDropDownHeader({
    Key key,
    @required this.items,
    @required this.controller,
    @required this.stackKey,
    this.style = const TextStyle(color: Color(0xFF666666), fontSize: 13),
    this.dropDownStyle,
    this.height = 40,
    this.iconColor = const Color(0xFFafada7),
    this.iconDropDownColor,
    this.iconSize = 20,
    this.borderWidth = 1,
    this.borderColor = const Color(0xFFeeede6),
    this.dividerHeight = 0,
    this.dividerColor = const Color(0xFFeeede6),
    this.onItemTap,
    this.color = Colors.white,
  }) : super(key: key);

  @override
  _GZXDropDownHeaderState createState() => _GZXDropDownHeaderState();
}

class _GZXDropDownHeaderState extends State<GZXDropDownHeader> with SingleTickerProviderStateMixin {
  bool _isShowDropDownItemWidget = false;
  double _screenWidth;
  double _screenHeight;
  int _menuCount;
  GlobalKey _keyDropDownHearder = GlobalKey();

  @override
  void initState() {
    super.initState();

    widget.controller.addListener(_onController);
  }

  _onController() {
    setState(() {});
//    print(widget.controller.menuIndex);
  }

  @override
  Widget build(BuildContext context) {
//    print('_GZXDropDownHeaderState.build');

    widget.dropDownStyle ??= TextStyle(color: Theme.of(context).primaryColor, fontSize: 13);
    widget.iconDropDownColor ??= Theme.of(context).primaryColor;

    //MediaQueryData mediaQuery = MediaQuery.of(context);
    //_screenWidth = 300;//mediaQuery.size.width;
    //_screenHeight = 42;//mediaQuery.size.height;
    _menuCount = widget.items.length;

    /*var gridView = GridView.count(
      crossAxisCount: _menuCount,
      childAspectRatio: (_screenWidth / _menuCount) / widget.height,
      children: widget.items.map<Widget>((item) {
        return _menu(item);
      }).toList(),
    );

    List<Widget> list = widget.items.map<Widget>((item) {
      return _menu(item);
    }).toList();*/

    return Container(
      key: _keyDropDownHearder,
      color:widget.color,

//      padding: EdgeInsets.only(top: 1, bottom: 1),
      /*decoration: BoxDecoration(
        border: Border.all(color: widget.borderColor, width: widget.borderWidth),
      ),*/
      child:Column(children: <Widget>[
        SizedBox(height:5,),
        Row(children: <Widget>[
          SizedBox(width:YBSise.padding,),
          _menu(widget.items[0]),
          _menu(widget.items[1]),
          Expanded(child:Text(""),),
          /*SizedBox(width:YBSise.padding,),
        GestureDetector(child:Icon(Icons.search) ,onTap: (){Future<DateTime> selectedDate = showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2018),
          lastDate: DateTime(2030),
          builder: (BuildContext context, Widget child) {
            return Theme(
              data: ThemeData.dark(),
              child: child,
            );
          },
        );},),
        SizedBox(width:YBSise.padding,),*/
        ],),
        SizedBox(height:5,),
        Divider(height: 0,),
      ],),
    );

  }

  dispose() {
    super.dispose();
  }

  _menu(GZXDropDownHeaderItem item) {
    int index = widget.items.indexOf(item);
    int menuIndex = widget.controller.menuIndex;
    _isShowDropDownItemWidget = index == menuIndex && widget.controller.isShow;

    return GestureDetector(
      onTap: () {
        final RenderBox overlay = widget.stackKey.currentContext.findRenderObject();

        final RenderBox dropDownItemRenderBox = _keyDropDownHearder.currentContext.findRenderObject();

        var position = dropDownItemRenderBox.localToGlobal(Offset.zero, ancestor: overlay);
//        print("POSITION : $position ");
        var size = dropDownItemRenderBox.size;
//        print("SIZE : $size");

        widget.controller.dropDownHearderHeight = size.height + position.dy;

        if (widget.controller.isShow) {
          widget.controller.hide();
        } else {
          widget.controller.show(index);
        }
        if (widget.onItemTap != null) {
          widget.onItemTap(index);
        }
        setState(() {});
      },
      child: Container(
          color: widget.color,
          width: 70,
          height: 42,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Flexible(
                        child: Text(
                          item.title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: _isShowDropDownItemWidget ? widget.dropDownStyle : widget.style,
                        )),
                    Icon(
                      !_isShowDropDownItemWidget
                          ? item.iconData ?? Icons.arrow_drop_down
                          : item.iconData ?? Icons.arrow_drop_up,
                      color: _isShowDropDownItemWidget ? widget.iconDropDownColor : widget.iconColor,
                      size: item.iconSize ?? widget.iconSize,
                    ),
                  ],
                ),
              ),
              index == widget.items.length - 1
                  ? Container()
                  : Container(
                height: widget.dividerHeight,
                decoration:
                BoxDecoration(border: Border(right: BorderSide(color: widget.dividerColor, width: 1))),
              )
            ],
          )),
    );
  }
}

class GZXDropDownHeaderItem {
  final String title;
  final IconData iconData;
  final double iconSize;

  GZXDropDownHeaderItem(
      this.title, {
        this.iconData,
        this.iconSize,
      });
}

