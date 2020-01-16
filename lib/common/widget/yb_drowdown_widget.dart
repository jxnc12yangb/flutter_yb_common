/// @author yangbang
/// @create 2019/12/26
/// @Describe
import 'package:flutter/material.dart';

class DropdownWidget extends StatefulWidget {
  final String title;
  final List<Map> items;
  final ValueChanged<Map> itemCallBack;
  final Map currentItem;
  final String hintText;


  DropdownWidget({

    this.title,
    this.items,
    this.itemCallBack,
    this.currentItem,
    this.hintText,
  });

  @override
  State<StatefulWidget> createState() => DropdownState(currentItem);
}

class DropdownState extends State<DropdownWidget> {
  List<DropdownMenuItem<Map>> dropDownItems = [];
  Map currentItem;

  DropdownState(this.currentItem);

  @override
  void initState() {
    super.initState();
    for (Map item in widget.items) {
      dropDownItems.add(DropdownMenuItem(
        value: item,
        child: Text(
          item["name"],
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ));
    }

   /* bool n = dropDownItems.where((DropdownMenuItem<Map> item) {
      Log.d("dd");
      return item.value == currentItem;
    } ).length == 1;*/

  }

  @override
  void didUpdateWidget(DropdownWidget oldWidget) {
    if (this.currentItem != widget.currentItem) {
      setState(() {
        this.currentItem = widget.currentItem;
      });
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    //assert(dropDownItems == null || dropDownItems.isEmpty || currentItem == null || dropDownItems.where((DropdownMenuItem<Map> item) => item.value == currentItem).length == 1);

    return DropdownButtonHideUnderline(
      child: DropdownButton(
        value: currentItem,
        isExpanded: true,
        items: dropDownItems,
        onChanged: (selectedItem) => setState(() {
          currentItem = selectedItem;
          widget.itemCallBack(currentItem);
        }),
        hint: Container(
          child: Text(widget.hintText),
        ),
      ),
    );
  }
}