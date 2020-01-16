import 'package:flutter/material.dart';


/// @author yangbang
/// @create 2019/12/12
/// @Describe
class YBColors {
  
  YBColors({this.primaryIntValue}){
    primarySwatch = MaterialColor(primaryIntValue,<int, Color>{
      50:  Color(primaryIntValue),
      100:  Color(primaryIntValue),
      200:  Color(primaryIntValue),
      300:  Color(primaryIntValue),
      400:  Color(primaryIntValue),
      500:  Color(primaryIntValue),
      600:  Color(primaryIntValue),
      700:  Color(primaryIntValue),
      800:  Color(primaryIntValue),
      900:  Color(primaryIntValue),
    });  
  }
  
  int primaryIntValue = 0xFF498FFF;
  MaterialColor primarySwatch ;
  

  String primaryValueString = "#24292E";
   String primaryLightValueString = "#42464b";
   String primaryDarkValueString = "#121917";
   String miWhiteString = "#ececec";
   String actionBlueString = "#267aff";
   String webDraculaBackgroundColorString = "#282a36";

   Color primaryValue = Color(0xFF498FFF);
   Color primaryLightValue = Color(0xFF42464b);
   Color primaryDarkValue = Color(0xFF498FFF);

   Color cardWhite = Color(0xFFFFFFFF);
   Color textWhite = Color(0xFFFFFFFF);
   Color miWhite = Color(0xffececec);
   Color white = Color(0xFFFFFFFF);
   Color contentBG = Color(0xFFF4F5F6);
   Color actionBlue = Color(0xff267aff);
   Color subTextColor = Color(0xFF999999);
   Color subLightTextColor = Color(0xffc4c4c4);

   Color mainBackgroundColor = Color(0xFFFFFFFF);

   Color mainTextColor = Color(0xFF333333);
   Color textColorWhite = Color(0xFFFFFFFF);

   Color dark = Color(0xFF999999);

   Color darkTip = Color(0xFF666666);

  // Color darkNomal = Color(0xFF999999);
   Color darkLight = Color(0xFFBBBBBB);

   Color iconWhite = Color(0xFFBBBBBB);


}

///文本样式
class YBTextStyle {

  YBSise size;
  YBColors colors;

  YBTextStyle(this.size,this.colors);

   String app_default_share_url =
      "https://github.com/CarGuo/gsy_github_app_flutter";

   double get biglarerTextSiez =>size.biglarerTextSiez;
   double get lagerTextSize =>size.lagerTextSize;
   double get bigTextSize =>size.bigTextSize;
   double get middleTextWhiteSize =>size.middleTextWhiteSize;
   double get normalTextSize=>size.normalTextSize;
   double get smallTextSize=>size.smallTextSize;
   double get minTextSize=>size.minTextSize;
   

  TextStyle get minText => TextStyle(
    color: colors.mainTextColor,
    fontSize: minTextSize,
  );

   TextStyle get minTextPri => TextStyle(
    color: colors.primaryValue,
    fontSize: minTextSize,
  );

   TextStyle get minTextDark => TextStyle(
    color: colors.dark,
    fontSize: minTextSize,
  );

   TextStyle get minTextDarkLike => TextStyle(
    color: colors.darkLight,
    fontSize: minTextSize,
  );

   TextStyle get smallTextWhite => TextStyle(
    color: colors.textColorWhite,
    fontSize: smallTextSize,
  );

   TextStyle get smallText => TextStyle(
    color: colors.mainTextColor,
    fontSize: smallTextSize,
  );

   TextStyle get smallTextDark => TextStyle(
    color: colors.dark,
    fontSize: smallTextSize,
  );

   TextStyle get smallTextDarkLike => TextStyle(
    color: colors.darkLight,
    fontSize: smallTextSize,
  );

   TextStyle get smallTextBold => TextStyle(
    color: colors.mainTextColor,
    fontSize: smallTextSize,
    fontWeight: FontWeight.bold,
  );

   TextStyle get smallSubLightText => TextStyle(
    color: colors.subLightTextColor,
    fontSize: smallTextSize,
  );

   TextStyle get smallActionLightText => TextStyle(
    color: colors.actionBlue,
    fontSize: smallTextSize,
  );

   TextStyle get smallMiLightText => TextStyle(
    color: colors.miWhite,
    fontSize: smallTextSize,
  );

   TextStyle get smallSubText => TextStyle(
    color: colors.subTextColor,
    fontSize: smallTextSize,
  );

   TextStyle get middleText => TextStyle(
    color: colors.mainTextColor,
    fontSize: middleTextWhiteSize,
  );

   TextStyle get middleTextWhite => TextStyle(
    color: colors.textColorWhite,
    fontSize: middleTextWhiteSize,
  );

   TextStyle get middleTextDark => TextStyle(
    color: colors.dark,
    fontSize: middleTextWhiteSize,
  );

   TextStyle get middleSubText => TextStyle(
    color: colors.subTextColor,
    fontSize: middleTextWhiteSize,
  );

   TextStyle get middleSubLightText => TextStyle(
    color: colors.subLightTextColor,
    fontSize: middleTextWhiteSize,
  );

   TextStyle get middleTextBold => TextStyle(
    color: colors.mainTextColor,
    fontSize: middleTextWhiteSize,
    fontWeight: FontWeight.bold,
  );

   TextStyle get middleTextWhiteBold => TextStyle(
    color: colors.textColorWhite,
    fontSize: middleTextWhiteSize,
    fontWeight: FontWeight.bold,
  );

   TextStyle get middleSubTextBold => TextStyle(
    color: colors.subTextColor,
    fontSize: middleTextWhiteSize,
    fontWeight: FontWeight.bold,
  );

   TextStyle get normalText => TextStyle(
    color: colors.mainTextColor,
    fontSize: normalTextSize,
  );

   TextStyle get normalTextBold => TextStyle(
    color: colors.mainTextColor,
    fontSize: normalTextSize,
    fontWeight: FontWeight.bold,
  );

   TextStyle get normalSubText => TextStyle(
    color: colors.subTextColor,
    fontSize: normalTextSize,
  );

   TextStyle get normalTextDark => TextStyle(
    color: colors.dark,
    fontSize: normalTextSize,
  );

   TextStyle get normalTextWhite => TextStyle(
    color: colors.textColorWhite,
    fontSize: normalTextSize,
  );

   TextStyle get normalTextWhiteBold => TextStyle(
    color: colors.textColorWhite,
    fontSize: normalTextSize,
    fontWeight: FontWeight.bold,
  );

   TextStyle get normalTextMitWhiteBold => TextStyle(
    color: colors.miWhite,
    fontSize: normalTextSize,
    fontWeight: FontWeight.bold,
  );

   TextStyle get normalTextActionWhiteBold => TextStyle(
    color: colors.actionBlue,
    fontSize: normalTextSize,
    fontWeight: FontWeight.bold,
  );

   TextStyle get normalTextLight => TextStyle(
    color: colors.primaryLightValue,
    fontSize: normalTextSize,
  );

   TextStyle get largeText => TextStyle(
    color: colors.mainTextColor,
    fontSize: bigTextSize,
  );

   TextStyle get largeTextBold => TextStyle(
    color: colors.mainTextColor,
    fontSize: bigTextSize,
    fontWeight: FontWeight.bold,
  );

   TextStyle get largeTextWhite => TextStyle(
    color: colors.textColorWhite,
    fontSize: bigTextSize,
  );

   TextStyle get largeTextWhiteBold => TextStyle(
    color: colors.textColorWhite,
    fontSize: bigTextSize,
    fontWeight: FontWeight.bold,
  );

   TextStyle get largeLargeTextWhite => TextStyle(
    color: colors.textColorWhite,
    fontSize: lagerTextSize,
    fontWeight: FontWeight.bold,
  );


   TextStyle get largeLargeText => TextStyle(
    color: colors.mainTextColor,
    fontSize: lagerTextSize,
    fontWeight: FontWeight.bold,
  );

   TextStyle get bigLargeText => TextStyle(
    color: colors.mainTextColor,
    fontSize: biglarerTextSiez,
    fontWeight: FontWeight.bold,
  );


   TextStyle get hinkLargeStyle => TextStyle(
    color: Color(0xFFCCCCCC),
    fontSize: bigTextSize
  );

   TextStyle get copyTextStyle  => TextStyle(
      color: Colors.deepOrange,
      fontSize: normalTextSize
  );

}

class  YBICons {
   static const String FONT_FAMILY = 'wxcIconFont';

   String DEFAULT_USER_ICON = 'images/bpay.png';
   String DEFAULT_IMAGE = 'images/default_img.png';
   String DEFAULT_REMOTE_PIC =
      'https://raw.githubusercontent.com/CarGuo/gsy_github_app_flutter/master//images/logo.png';

   IconData HOME =
    IconData(0xe624, fontFamily: YBICons.FONT_FAMILY);
   IconData MORE =
  const IconData(0xe674, fontFamily: YBICons.FONT_FAMILY);
   IconData SEARCH =
  const IconData(0xe61c, fontFamily: YBICons.FONT_FAMILY);

   IconData MAIN_DT =
  const IconData(0xe684, fontFamily: YBICons.FONT_FAMILY);
   IconData MAIN_QS =
  const IconData(0xe818, fontFamily: YBICons.FONT_FAMILY);
   IconData MAIN_MY =
  const IconData(0xe6d0, fontFamily: YBICons.FONT_FAMILY);
   IconData MAIN_SEARCH =
  const IconData(0xe61c, fontFamily: YBICons.FONT_FAMILY);

   IconData LOGIN_USER =
  const IconData(0xe666, fontFamily: YBICons.FONT_FAMILY);
   IconData LOGIN_PW =
  const IconData(0xe60e, fontFamily: YBICons.FONT_FAMILY);

   IconData REPOS_ITEM_USER =
  const IconData(0xe63e, fontFamily: YBICons.FONT_FAMILY);
   IconData REPOS_ITEM_STAR =
  const IconData(0xe643, fontFamily: YBICons.FONT_FAMILY);
   IconData REPOS_ITEM_FORK =
  const IconData(0xe67e, fontFamily: YBICons.FONT_FAMILY);
   IconData REPOS_ITEM_ISSUE =
  const IconData(0xe661, fontFamily: YBICons.FONT_FAMILY);

   IconData REPOS_ITEM_STARED =
  const IconData(0xe698, fontFamily: YBICons.FONT_FAMILY);
   IconData REPOS_ITEM_WATCH =
  const IconData(0xe681, fontFamily: YBICons.FONT_FAMILY);
   IconData REPOS_ITEM_WATCHED =
  const IconData(0xe629, fontFamily: YBICons.FONT_FAMILY);
   IconData REPOS_ITEM_DIR = Icons.folder;
   IconData REPOS_ITEM_FILE =
  const IconData(0xea77, fontFamily: YBICons.FONT_FAMILY);
   IconData REPOS_ITEM_NEXT =
  const IconData(0xe610, fontFamily: YBICons.FONT_FAMILY);

   IconData USER_ITEM_COMPANY =
  const IconData(0xe63e, fontFamily: YBICons.FONT_FAMILY);
   IconData USER_ITEM_LOCATION =
  const IconData(0xe7e6, fontFamily: YBICons.FONT_FAMILY);
   IconData USER_ITEM_LINK =
  const IconData(0xe670, fontFamily: YBICons.FONT_FAMILY);
   IconData USER_NOTIFY =
  const IconData(0xe600, fontFamily: YBICons.FONT_FAMILY);

   IconData ISSUE_ITEM_ISSUE =
  const IconData(0xe661, fontFamily: YBICons.FONT_FAMILY);
   IconData ISSUE_ITEM_COMMENT =
  const IconData(0xe6ba, fontFamily: YBICons.FONT_FAMILY);
   IconData ISSUE_ITEM_ADD =
  const IconData(0xe662, fontFamily: YBICons.FONT_FAMILY);

   IconData ISSUE_EDIT_H1 = Icons.filter_1;
   IconData ISSUE_EDIT_H2 = Icons.filter_2;
   IconData ISSUE_EDIT_H3 = Icons.filter_3;
   IconData ISSUE_EDIT_BOLD = Icons.format_bold;
   IconData ISSUE_EDIT_ITALIC = Icons.format_italic;
   IconData ISSUE_EDIT_QUOTE = Icons.format_quote;
   IconData ISSUE_EDIT_CODE = Icons.format_shapes;
   IconData ISSUE_EDIT_LINK = Icons.insert_link;

   IconData NOTIFY_ALL_READ =
  const IconData(0xe62f, fontFamily: YBICons.FONT_FAMILY);

   IconData PUSH_ITEM_EDIT = Icons.mode_edit;
   IconData PUSH_ITEM_ADD = Icons.add_box;
   IconData PUSH_ITEM_MIN = Icons.indeterminate_check_box;

}

class YBSise{

   //YBSise _instance;
   static const int defaultWidth = 1080;
   static const int defaultHeight = 1920;

  /// UI设计中手机尺寸 , px
  /// Size of the phone in UI Design , px
  num uiWidthPx;
  num uiHeightPx;

  /// 控制字体是否要根据系统的“字体大小”辅助选项来进行缩放。默认值为false。
  /// allowFontScaling Specifies whether fonts should scale to respect Text Size accessibility settings. The default is false.
  bool allowFontScaling;

   MediaQueryData _mediaQueryData;
   double _screenWidth;
   double _screenHeight;
   double _pixelRatio;
   double _statusBarHeight;
   double _bottomBarHeight;
   double _textScaleFactor;

  //YBSise._();

  /*factory YBSise() {
    return _instance;
  }*/

  YBSize(BuildContext context,
      {num width = defaultWidth,
        num height = defaultHeight,
        bool allowFontScaling = false}){
    uiWidthPx = width;
    uiHeightPx = height;
    allowFontScaling = allowFontScaling;

    MediaQueryData mediaQuery = MediaQuery.of(context);
    _mediaQueryData = mediaQuery;
    _pixelRatio = mediaQuery.devicePixelRatio;
    _screenWidth = mediaQuery.size.width;
    _screenHeight = mediaQuery.size.height;
    _statusBarHeight = mediaQuery.padding.top;
    _bottomBarHeight = _mediaQueryData.padding.bottom;
    _textScaleFactor = mediaQuery.textScaleFactor;
    setSize(_screenWidth,_screenHeight);
  }

 /*  void init(BuildContext context,
      {num width = defaultWidth,
        num height = defaultHeight,
        bool allowFontScaling = false}) {
    if (_instance == null) {
      _instance = YBSise._();
      _instance.uiWidthPx = width;
      _instance.uiHeightPx = height;
      _instance.allowFontScaling = allowFontScaling;

      MediaQueryData mediaQuery = MediaQuery.of(context);
      _mediaQueryData = mediaQuery;
      _pixelRatio = mediaQuery.devicePixelRatio;
      _screenWidth = mediaQuery.size.width;
      _screenHeight = mediaQuery.size.height;
      _statusBarHeight = mediaQuery.padding.top;
      _bottomBarHeight = _mediaQueryData.padding.bottom;
      _textScaleFactor = mediaQuery.textScaleFactor;

      _instance.setSize(_screenWidth,_screenHeight);

    }

  }
*/


   MediaQueryData get mediaQueryData => _mediaQueryData;

  /// 每个逻辑像素的字体像素数，字体的缩放比例
  /// The number of font pixels for each logical pixel.
   double get textScaleFactor => _textScaleFactor;

  /// 设备的像素密度
  /// The size of the media in logical pixels (e.g, the size of the screen).
   double get pixelRatio => _pixelRatio;

  /// 当前设备宽度 dp
  /// The horizontal extent of this size.
   double get screenWidthDp => _screenWidth;

  ///当前设备高度 dp
  ///The vertical extent of this size. dp
   double get screenHeightDp => _screenHeight;

  /// 当前设备宽度 px
  /// The vertical extent of this size. px
   double get screenWidth => _screenWidth * _pixelRatio;

  /// 当前设备高度 px
  /// The vertical extent of this size. px
   double get screenHeight => _screenHeight * _pixelRatio;

  /// 状态栏高度 dp 刘海屏会更高
  /// The offset from the top
   double get statusBarHeight => _statusBarHeight;

  /// 底部安全区距离 dp
  /// The offset from the bottom.
   double get bottomBarHeight => _bottomBarHeight;

  /// 实际的dp与UI设计px的比例
  /// The ratio of the actual dp to the design draft px
  double get scaleWidth => _screenWidth / uiWidthPx;

  double get scaleHeight => _screenHeight / uiHeightPx;

  double get scaleText => scaleWidth > scaleHeight ? scaleWidth : scaleHeight;

  /// 根据UI设计的设备宽度适配
  /// 高度也可以根据这个来做适配可以保证不变形,比如你先要一个正方形的时候.
  /// Adapted to the device width of the UI Design.
  /// Height can also be adapted according to this to ensure no deformation ,
  /// if you want a square
  num setWidth(num width) => width * scaleWidth;

  /// 根据UI设计的设备高度适配
  /// 当发现UI设计中的一屏显示的与当前样式效果不符合时,
  /// 或者形状有差异时,建议使用此方法实现高度适配.
  /// 高度适配主要针对想根据UI设计的一屏展示一样的效果
  /// Highly adaptable to the device according to UI Design
  /// It is recommended to use this method to achieve a high degree of adaptation
  /// when it is found that one screen in the UI design
  /// does not match the current style effect, or if there is a difference in shape.
  num setHeight(num height) => height * scaleHeight;

  ///字体大小适配方法
  ///@param [fontSize] UI设计上字体的大小,单位px.
  ///Font size adaptation method
  ///@param [fontSize] The size of the font on the UI design, in px.
  ///@param [allowFontScaling]
  num setSp(num fontSize, {bool allowFontScalingSelf}) =>
      allowFontScalingSelf == null
          ? (allowFontScaling
          ? (fontSize * scaleText)
          : ((fontSize * scaleText) / _textScaleFactor))
          : (allowFontScalingSelf
          ? (fontSize * scaleText)
          : ((fontSize * scaleText) / _textScaleFactor));

  //预设转换单位
   double padding = 15;
   double small_padding = 5;
   double backMargin = 19;
   double appBarHeight = 50;

   double biglarerTextSiez = 38.0;
   double lagerTextSize = 30.0;
   double bigTextSize = 21.0;
   double middleTextWhiteSize = 17.0;
   double normalTextSize = 15.0;
   double smallTextSize = 13.5;
   double minTextSize = 12.0;


  //和设计图等比例的尺寸  重复避免计算
   List SH = [];
   List SW = [];

  void setSize(width,height) {
    SW = List.generate((width+1).toInt(),(int index){
      return setWidth(index);
    });
    SH = List.generate((height+1).toInt(),(int index){
      return setHeight(index);
    });
    padding = setHeight(15);
    small_padding = setHeight(5);
    backMargin = setHeight(19);
    appBarHeight = setHeight(50);

    biglarerTextSiez = setSp(38);
    lagerTextSize = setSp(30);

    bigTextSize = setSp(21.0);
    middleTextWhiteSize = setSp(17.0);
    normalTextSize = setSp(15.0);
    smallTextSize = setSp(13.5);
    minTextSize = setSp(12.0);

  }

}



