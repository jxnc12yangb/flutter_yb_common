import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// 带图标的输入框
class YBInputWidget extends StatefulWidget {
  final bool obscureText;

  final String hintText;

  final IconData iconData;

  final ValueChanged<String> onChanged;

  final TextStyle textStyle;

  final TextEditingController controller;

  final TextInputType inputType;

  final TextStyle hintStyle;

  YBInputWidget(
      {Key key,
      this.hintText,
      this.iconData,
      this.onChanged,
      this.textStyle,
      this.controller,
      this.inputType,
      this.hintStyle,
      this.obscureText = false})
      : super(key: key);

  @override
  _YBInputWidgetState createState() => new _YBInputWidgetState();
}

/// State for [GSYInputWidget] widgets.
class _YBInputWidgetState extends State<YBInputWidget> {
  final _text = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return new TextField(
      controller: widget.controller,
      onChanged: widget.onChanged,
      obscureText: widget.obscureText,
      keyboardType:widget.inputType ,
      style:widget.textStyle,
      decoration: new InputDecoration(
        hintText: widget.hintText,
        hintStyle:widget.hintStyle,
        //icon: _text.textwidget.iconData == null ? null : new Icon(widget.iconData),
        //labelText: 'Enter the Value',
        //errorText: _text.text.isEmpty ? 'Value Can\'t Be Empty' : null,
      ),

    );
  }
}


/// 带图标的输入框
class YBTextFormField extends StatefulWidget {
  final bool obscureText;

  String hintText;

  final IconData iconData;

  final ValueChanged<String> onChanged;

  final TextStyle textStyle;

  final TextEditingController controller;

  final TextInputType inputType;

  final TextStyle hintStyle;

  final val;

  final List<TextInputFormatter> inputFormat;

  var suffixText;

  final ValueChanged<String> onFieldSubmitted;

  var onEditingComplete;

  var preStyle;

  var border;

  var minLines;

  YBTextFormField(
      {Key key,
        this.val,
        this.hintText,
        this.iconData,
        this.onChanged,
        this.textStyle,
        this.controller,
        this.inputType,
        this.hintStyle,
        this.inputFormat,
        this.suffixText,
        this.preText,
        this.preStyle,
        this.onFieldSubmitted,
        this.onEditingComplete,
        this.border,
        this.minLines,
        this.obscureText = false})
      : super(key: key);

  var preText;

  @override
  YYBTextFormFieldState createState() => new YYBTextFormFieldState();
}

/// State for [GSYInputWidget] widgets.
class YYBTextFormFieldState extends State<YBTextFormField> {
  //final _text = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.val,
      minLines:widget.minLines,
      maxLines: widget.minLines,
      controller: widget.controller,
      onChanged: widget.onChanged,
      obscureText: widget.obscureText,
      keyboardType:widget.inputType ,
      inputFormatters:widget.inputFormat,
      style:widget.textStyle,
      onFieldSubmitted:widget.onFieldSubmitted,
      onEditingComplete:widget.onEditingComplete,
      decoration: new InputDecoration(

        hintText: widget.hintText,
        hintStyle:widget.hintStyle,
        suffixText:widget.suffixText,
        prefixText:widget.preText,
        prefixStyle:widget.preStyle,
        //border:widget.border
        //icon: _text.textwidget.iconData == null ? null : new Icon(widget.iconData),
        //errorText: widget.suffixText,
        //errorText: _text.text.isEmpty ? 'Value Can\'t Be Empty' : null,
      ),

    );
  }
}
