
///地址数据
class Address {
  static const String host = "http://appsvn.topay.com.au/";
  static const String hostWeb = "https://github.com/";
  static const String graphicHost = 'https://ghchart.rshah.org/';
  static const String updateUrl = 'https://www.pgyer.com/guqa';


  ///获取授权  post
  static getAuthorization() {
    return "${host}Authentication/init";
  }

  ///新增预订单
  static newOrder(){
    return "${host}order";
  }

  ///查询订单
  static queryOrder(){
    return "${host}order/status";
  }

  ///查询订单
  static queryBillerCode(){
    return "${host}bpay_biller";
  }

  ///收藏
  static addCollect(){
    return "${host}bpay_favorites";
  }

  ///收藏
  static queryCollects(){
    return "${host}bpay_favorites/list";
  }

  ///获取生活服务
  static getLiveService(){
    return "${host}payment_item/list";
  }

  ///缴费历史记录
  static orderHistory(){
    return "${host}order/list";
  }

  ///预设bill list
  static billerList(){
    return "${host}bpay_biller/list";
  }

  ///获取退款原因列表
  static refundReasons(){
    return "${host}order/refund_reason";
  }

  ///订单退款接口
  static orderRefund(){
    return "${host}order/refund";
  }

  ///意见反馈 Feedback
  static feedBack() {
    return "${host}Feedback";
  }

  ///获取文章列表
  static articleList() {
    return "${host}article/list";
  }

  ///获取广告列表
  static adList() {
    return "${host}publicity/list";
  }

  static test(){
    return "${host}order";
  }


}
