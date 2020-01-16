import 'package:flutter/material.dart';


/// @author yangbang
/// @create 2019/12/12
/// @Describe
class YBColors {
  static const int primaryIntValue = 0xFF498FFF;

  static const MaterialColor primarySwatch = const MaterialColor(
    primaryIntValue,
    const <int, Color>{
      50: const Color(primaryIntValue),
      100: const Color(primaryIntValue),
      200: const Color(primaryIntValue),
      300: const Color(primaryIntValue),
      400: const Color(primaryIntValue),
      500: const Color(primaryIntValue),
      600: const Color(primaryIntValue),
      700: const Color(primaryIntValue),
      800: const Color(primaryIntValue),
      900: const Color(primaryIntValue),
    },
  );

  static const String primaryValueString = "#24292E";
  static const String primaryLightValueString = "#42464b";
  static const String primaryDarkValueString = "#121917";
  static const String miWhiteString = "#ececec";
  static const String actionBlueString = "#267aff";
  static const String webDraculaBackgroundColorString = "#282a36";

  static const Color primaryValue = Color(0xFF498FFF);
  static const Color primaryLightValue = Color(0xFF42464b);
  static const Color primaryDarkValue = Color(0xFF498FFF);

  static const Color cardWhite = Color(0xFFFFFFFF);
  static const Color textWhite = Color(0xFFFFFFFF);
  static const Color miWhite = Color(0xffececec);
  static const Color white = Color(0xFFFFFFFF);
  static const Color contentBG = Color(0xFFF4F5F6);
  static const Color actionBlue = Color(0xff267aff);
  static const Color subTextColor = Color(0xFF999999);
  static const Color subLightTextColor = Color(0xffc4c4c4);

  static const Color mainBackgroundColor = miWhite;

  static const Color mainTextColor = Color(0xFF333333);
  static const Color textColorWhite = white;

  static const Color dark = Color(0xFF999999);

  static const Color darkTip = Color(0xFF666666);

  //static const Color darkNomal = Color(0xFF999999);
  static const Color darkLight = Color(0xFFBBBBBB);

  static const Color iconWhite = Color(0xFFBBBBBB);


}

///文本样式
class YBTextStyle {
  static const String app_default_share_url =
      "https://github.com/CarGuo/gsy_github_app_flutter";

  static double biglarerTextSiez = YBSise.biglarerTextSiez;
  static double lagerTextSize = YBSise.lagerTextSize;
  static double bigTextSize = YBSise.bigTextSize;
  static double middleTextWhiteSize = YBSise.middleTextWhiteSize;
  static double normalTextSize = YBSise.normalTextSize;
  static double smallTextSize = YBSise.smallTextSize;
  static double minTextSize = YBSise.minTextSize;

  double sdsf = 10;

  static TextStyle minText = TextStyle(
    color: YBColors.mainTextColor,
    fontSize: minTextSize,
  );

  static TextStyle minTextPri = TextStyle(
    color: YBColors.primaryValue,
    fontSize: minTextSize,
  );

  static TextStyle minTextDark = TextStyle(
    color: YBColors.dark,
    fontSize: minTextSize,
  );

  static TextStyle minTextDarkLike = TextStyle(
    color: YBColors.darkLight,
    fontSize: minTextSize,
  );

  static TextStyle smallTextWhite = TextStyle(
    color: YBColors.textColorWhite,
    fontSize: smallTextSize,
  );

  static TextStyle smallText = TextStyle(
    color: YBColors.mainTextColor,
    fontSize: smallTextSize,
  );

  static TextStyle smallTextDark = TextStyle(
    color: YBColors.dark,
    fontSize: smallTextSize,
  );

  static TextStyle smallTextDarkLike = TextStyle(
    color: YBColors.darkLight,
    fontSize: smallTextSize,
  );

  static TextStyle smallTextBold = TextStyle(
    color: YBColors.mainTextColor,
    fontSize: smallTextSize,
    fontWeight: FontWeight.bold,
  );

  static TextStyle smallSubLightText = TextStyle(
    color: YBColors.subLightTextColor,
    fontSize: smallTextSize,
  );

  static TextStyle smallActionLightText = TextStyle(
    color: YBColors.actionBlue,
    fontSize: smallTextSize,
  );

  static TextStyle smallMiLightText = TextStyle(
    color: YBColors.miWhite,
    fontSize: smallTextSize,
  );

  static TextStyle smallSubText = TextStyle(
    color: YBColors.subTextColor,
    fontSize: smallTextSize,
  );

  static TextStyle middleText = TextStyle(
    color: YBColors.mainTextColor,
    fontSize: middleTextWhiteSize,
  );

  static TextStyle middleTextWhite = TextStyle(
    color: YBColors.textColorWhite,
    fontSize: middleTextWhiteSize,
  );

  static TextStyle middleTextDark = TextStyle(
    color: YBColors.dark,
    fontSize: middleTextWhiteSize,
  );

  static TextStyle middleSubText = TextStyle(
    color: YBColors.subTextColor,
    fontSize: middleTextWhiteSize,
  );

  static TextStyle middleSubLightText = TextStyle(
    color: YBColors.subLightTextColor,
    fontSize: middleTextWhiteSize,
  );

  static TextStyle middleTextBold = TextStyle(
    color: YBColors.mainTextColor,
    fontSize: middleTextWhiteSize,
    fontWeight: FontWeight.bold,
  );

  static TextStyle middleTextWhiteBold = TextStyle(
    color: YBColors.textColorWhite,
    fontSize: middleTextWhiteSize,
    fontWeight: FontWeight.bold,
  );

  static TextStyle middleSubTextBold = TextStyle(
    color: YBColors.subTextColor,
    fontSize: middleTextWhiteSize,
    fontWeight: FontWeight.bold,
  );

  static TextStyle normalText = TextStyle(
    color: YBColors.mainTextColor,
    fontSize: normalTextSize,
  );

  static TextStyle normalTextBold = TextStyle(
    color: YBColors.mainTextColor,
    fontSize: normalTextSize,
    fontWeight: FontWeight.bold,
  );

  static TextStyle normalSubText = TextStyle(
    color: YBColors.subTextColor,
    fontSize: normalTextSize,
  );

  static TextStyle normalTextDark = TextStyle(
    color: YBColors.dark,
    fontSize: normalTextSize,
  );

  static TextStyle normalTextWhite = TextStyle(
    color: YBColors.textColorWhite,
    fontSize: normalTextSize,
  );

  static TextStyle normalTextWhiteBold = TextStyle(
    color: YBColors.textColorWhite,
    fontSize: normalTextSize,
    fontWeight: FontWeight.bold,
  );

  static TextStyle normalTextMitWhiteBold = TextStyle(
    color: YBColors.miWhite,
    fontSize: normalTextSize,
    fontWeight: FontWeight.bold,
  );

  static TextStyle normalTextActionWhiteBold = TextStyle(
    color: YBColors.actionBlue,
    fontSize: normalTextSize,
    fontWeight: FontWeight.bold,
  );

  static TextStyle normalTextLight = TextStyle(
    color: YBColors.primaryLightValue,
    fontSize: normalTextSize,
  );

  static TextStyle largeText = TextStyle(
    color: YBColors.mainTextColor,
    fontSize: bigTextSize,
  );

  static TextStyle largeTextBold = TextStyle(
    color: YBColors.mainTextColor,
    fontSize: bigTextSize,
    fontWeight: FontWeight.bold,
  );

  static TextStyle largeTextWhite = TextStyle(
    color: YBColors.textColorWhite,
    fontSize: bigTextSize,
  );

  static TextStyle largeTextWhiteBold = TextStyle(
    color: YBColors.textColorWhite,
    fontSize: bigTextSize,
    fontWeight: FontWeight.bold,
  );

  static TextStyle largeLargeTextWhite = TextStyle(
    color: YBColors.textColorWhite,
    fontSize: lagerTextSize,
    fontWeight: FontWeight.bold,
  );



  static TextStyle largeLargeText = TextStyle(
    color: YBColors.mainTextColor,
    fontSize: lagerTextSize,
    fontWeight: FontWeight.bold,
  );

  static TextStyle bigLargeText = TextStyle(
    color: YBColors.mainTextColor,
    fontSize: biglarerTextSiez,
    fontWeight: FontWeight.bold,
  );


  static TextStyle hinkLargeStyle = TextStyle(
    color: Color(0xFFCCCCCC),
    fontSize: bigTextSize
  );

  static TextStyle copyTextStyle = TextStyle(
      color: Colors.deepOrange,
      fontSize: normalTextSize
  );

}

mixin  YBICons {
  static const String FONT_FAMILY = 'wxcIconFont';

  static const String DEFAULT_USER_ICON = 'images/bpay.png';
  static const String DEFAULT_IMAGE = 'images/default_img.png';
  static const String DEFAULT_REMOTE_PIC =
      'https://raw.githubusercontent.com/CarGuo/gsy_github_app_flutter/master/static/images/logo.png';

  static const IconData HOME =
  const IconData(0xe624, fontFamily: YBICons.FONT_FAMILY);
  static const IconData MORE =
  const IconData(0xe674, fontFamily: YBICons.FONT_FAMILY);
  static const IconData SEARCH =
  const IconData(0xe61c, fontFamily: YBICons.FONT_FAMILY);

  static const IconData MAIN_DT =
  const IconData(0xe684, fontFamily: YBICons.FONT_FAMILY);
  static const IconData MAIN_QS =
  const IconData(0xe818, fontFamily: YBICons.FONT_FAMILY);
  static const IconData MAIN_MY =
  const IconData(0xe6d0, fontFamily: YBICons.FONT_FAMILY);
  static const IconData MAIN_SEARCH =
  const IconData(0xe61c, fontFamily: YBICons.FONT_FAMILY);

  static const IconData LOGIN_USER =
  const IconData(0xe666, fontFamily: YBICons.FONT_FAMILY);
  static const IconData LOGIN_PW =
  const IconData(0xe60e, fontFamily: YBICons.FONT_FAMILY);

  static const IconData REPOS_ITEM_USER =
  const IconData(0xe63e, fontFamily: YBICons.FONT_FAMILY);
  static const IconData REPOS_ITEM_STAR =
  const IconData(0xe643, fontFamily: YBICons.FONT_FAMILY);
  static const IconData REPOS_ITEM_FORK =
  const IconData(0xe67e, fontFamily: YBICons.FONT_FAMILY);
  static const IconData REPOS_ITEM_ISSUE =
  const IconData(0xe661, fontFamily: YBICons.FONT_FAMILY);

  static const IconData REPOS_ITEM_STARED =
  const IconData(0xe698, fontFamily: YBICons.FONT_FAMILY);
  static const IconData REPOS_ITEM_WATCH =
  const IconData(0xe681, fontFamily: YBICons.FONT_FAMILY);
  static const IconData REPOS_ITEM_WATCHED =
  const IconData(0xe629, fontFamily: YBICons.FONT_FAMILY);
  static const IconData REPOS_ITEM_DIR = Icons.folder;
  static const IconData REPOS_ITEM_FILE =
  const IconData(0xea77, fontFamily: YBICons.FONT_FAMILY);
  static const IconData REPOS_ITEM_NEXT =
  const IconData(0xe610, fontFamily: YBICons.FONT_FAMILY);

  static const IconData USER_ITEM_COMPANY =
  const IconData(0xe63e, fontFamily: YBICons.FONT_FAMILY);
  static const IconData USER_ITEM_LOCATION =
  const IconData(0xe7e6, fontFamily: YBICons.FONT_FAMILY);
  static const IconData USER_ITEM_LINK =
  const IconData(0xe670, fontFamily: YBICons.FONT_FAMILY);
  static const IconData USER_NOTIFY =
  const IconData(0xe600, fontFamily: YBICons.FONT_FAMILY);

  static const IconData ISSUE_ITEM_ISSUE =
  const IconData(0xe661, fontFamily: YBICons.FONT_FAMILY);
  static const IconData ISSUE_ITEM_COMMENT =
  const IconData(0xe6ba, fontFamily: YBICons.FONT_FAMILY);
  static const IconData ISSUE_ITEM_ADD =
  const IconData(0xe662, fontFamily: YBICons.FONT_FAMILY);

  static const IconData ISSUE_EDIT_H1 = Icons.filter_1;
  static const IconData ISSUE_EDIT_H2 = Icons.filter_2;
  static const IconData ISSUE_EDIT_H3 = Icons.filter_3;
  static const IconData ISSUE_EDIT_BOLD = Icons.format_bold;
  static const IconData ISSUE_EDIT_ITALIC = Icons.format_italic;
  static const IconData ISSUE_EDIT_QUOTE = Icons.format_quote;
  static const IconData ISSUE_EDIT_CODE = Icons.format_shapes;
  static const IconData ISSUE_EDIT_LINK = Icons.insert_link;

  static const IconData NOTIFY_ALL_READ =
  const IconData(0xe62f, fontFamily: YBICons.FONT_FAMILY);

  static const IconData PUSH_ITEM_EDIT = Icons.mode_edit;
  static const IconData PUSH_ITEM_ADD = Icons.add_box;
  static const IconData PUSH_ITEM_MIN = Icons.indeterminate_check_box;

}

class YBSise{

  static YBSise _instance;
  static const int defaultWidth = 1080;
  static const int defaultHeight = 1920;

  /// UI设计中手机尺寸 , px
  /// Size of the phone in UI Design , px
  num uiWidthPx;
  num uiHeightPx;

  /// 控制字体是否要根据系统的“字体大小”辅助选项来进行缩放。默认值为false。
  /// allowFontScaling Specifies whether fonts should scale to respect Text Size accessibility settings. The default is false.
  bool allowFontScaling;

  static MediaQueryData _mediaQueryData;
  static double _screenWidth;
  static double _screenHeight;
  static double _pixelRatio;
  static double _statusBarHeight;
  static double _bottomBarHeight;
  static double _textScaleFactor;

  YBSise._();

  factory YBSise() {
    return _instance;
  }

  static void init(BuildContext context,
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



  static MediaQueryData get mediaQueryData => _mediaQueryData;

  /// 每个逻辑像素的字体像素数，字体的缩放比例
  /// The number of font pixels for each logical pixel.
  static double get textScaleFactor => _textScaleFactor;

  /// 设备的像素密度
  /// The size of the media in logical pixels (e.g, the size of the screen).
  static double get pixelRatio => _pixelRatio;

  /// 当前设备宽度 dp
  /// The horizontal extent of this size.
  static double get screenWidthDp => _screenWidth;

  ///当前设备高度 dp
  ///The vertical extent of this size. dp
  static double get screenHeightDp => _screenHeight;

  /// 当前设备宽度 px
  /// The vertical extent of this size. px
  static double get screenWidth => _screenWidth * _pixelRatio;

  /// 当前设备高度 px
  /// The vertical extent of this size. px
  static double get screenHeight => _screenHeight * _pixelRatio;

  /// 状态栏高度 dp 刘海屏会更高
  /// The offset from the top
  static double get statusBarHeight => _statusBarHeight;

  /// 底部安全区距离 dp
  /// The offset from the bottom.
  static double get bottomBarHeight => _bottomBarHeight;

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
  static double padding = 15;
  static double small_padding = 5;
  static double backMargin = 19;
  static double appBarHeight = 50;

  static double biglarerTextSiez = 38.0;
  static double lagerTextSize = 30.0;
  static double bigTextSize = 21.0;
  static double middleTextWhiteSize = 17.0;
  static double normalTextSize = 15.0;
  static double smallTextSize = 13.5;
  static double minTextSize = 12.0;


  //和设计图等比例的尺寸  重复避免计算
  static List SH = [];
  static List SW = [];

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

/// @author yangbang
/// @create 2020/1/11
/// @Describe 基础样式
abstract class YBBase {

  /*//路由名称
  get NAME;*/
  //跳转参数
  Map args = {};
  get SH =>YBSise.SH;
  get SW =>YBSise.SW;
  get padding => YBSise.padding;
  get small_padding => YBSise.small_padding;
  get backMargin => YBSise.backMargin;
  get appBarHeight => YBSise.appBarHeight;


  get biglarerTextSiez => YBSise.biglarerTextSiez;
  get lagerTextSize => YBSise.lagerTextSize;
  get bigTextSize => YBSise.bigTextSize;
  get middleTextWhiteSize => YBSise.middleTextWhiteSize;

  get normalTextSize => YBSise.normalTextSize;
  get smallTextSize => YBSise.smallTextSize;
  get minTextSize => YBSise.minTextSize;



  get TAG;



}



