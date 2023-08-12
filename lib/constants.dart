abstract class Constants {
 // static const String baseUrl = 'https://gprs.easycloud.co.in/gprserp';
  static const String baseUrl = 'https://minerva.easycloud.co.in/openbravo1';
  static const String json = 'org.openbravo.service.json.jsonrest';
  static const String ws = 'ws';
  static const String jsonWs = '$baseUrl/$json';
  static const String customWs = '$baseUrl/$ws';
  static const String oneSignalAppId = 'b5f89eea-bba2-4bd0-8318-fc1388f6f4f1';
  static const prefAppVersion = "App Version";
  static const prefDispatchShopsQuery = "Dispatch Orgs Query";
  static const prefDispatchProductsQuery = "Dispatch Products Query";
  static const prefGoodsShipmentDocType = "Goods Shipment Doc Type";
  static const prefRtvBps = "RTV_BPS";
  static const bakerySection = "BAKERY";
  static const sweetsSection = "SWEETS";
  static const sweetsCategoryId = "4F10FA24355F49C196BAB3C8179E82B6";
  static const bakeryCategoryId = "8A9A76268BC94F778EB41FF979C611D7";
  static const oilCategoryId = "2D82FC7817D8464386FB1675914ECF8E";
  static const foodsLlpId = "108A02B1142045C185C07DCCA00F27BB";
  static const pullaReddySweetsId = "FAA8DB42FD4F4C22B1CF204BEBAB2514";
  static const rtvShipmentId = "2D8CFCFAE1B8432396F38BAF41653436";
  static const pushNotifications = "EPN_PushNotification";
}

abstract class CustomWebservices {
  static const pushNotification = "in.easycloud.pns.service";
  static const processGRNOrOrder = "com.saksham.uploadfile.processGRNorOrder";
  static const generateDispatchInvoice = "in.easycloud.gpr.GSAddAttach";
  static const attachments = "in.easycloud.rest.files.v2";
}

abstract class Entities {
  static const String user = 'ADUser';
  static const String mobileAccess= 'gpr_mobileaccess';
  static const String businessPartner = 'BusinessPartner';
  static const String businessPartnerLocation = 'BusinessPartnerLocation';
  static const String purchaseOrder = 'Order';
  static const String orderedProducts = 'OrderLine';
  static const String goodsReceipt = 'MaterialMgmtShipmentInOut';
  static const String goodsReceiptLines = 'MaterialMgmtShipmentInOutLine';
  static const String storageBin = 'Locator';
  static const preference = "ADPreference";
  static const product = 'Product';
}
