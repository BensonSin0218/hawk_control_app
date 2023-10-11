import 'package:get/route_manager.dart';
import 'package:hawk_control_app/data/constants.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          TranslationKeys.connect: 'Connect',
          TranslationKeys.ipAddress: 'IP Address',
          PageTranslationKeys.introductionPageTitle: 'Introduction Page',
          PageTranslationKeys.startPageTitle: 'Start Page',
          PageTranslationKeys.startPageConnectToNewDrone:
              'Connect to new drone!',
          PageTranslationKeys.connectionPageTitle: 'Connection Page',
          ErrorTranslationKeys.error: 'Error',
          ErrorTranslationKeys.illegalIPAddress: 'Illegal IP address!',
        },
        'zh_CN': {
          TranslationKeys.connect: '連接',
          TranslationKeys.ipAddress: 'IP位址',
          PageTranslationKeys.introductionPageTitle: '简介页',
          PageTranslationKeys.startPageTitle: '起始页',
          PageTranslationKeys.startPageConnectToNewDrone: '連接到新的無人機!',
          PageTranslationKeys.connectionPageTitle: '連接頁面',
          ErrorTranslationKeys.error: '錯誤',
          ErrorTranslationKeys.illegalIPAddress: '非法IP位址！',
        },
        'zh_HK': {
          TranslationKeys.connect: '连接',
          TranslationKeys.ipAddress: 'IP地址',
          PageTranslationKeys.introductionPageTitle: '簡介頁',
          PageTranslationKeys.startPageTitle: '起始頁',
          PageTranslationKeys.startPageConnectToNewDrone: '连接到新的无人机!',
          PageTranslationKeys.connectionPageTitle: '连接页面',
          ErrorTranslationKeys.error: '错误',
          ErrorTranslationKeys.illegalIPAddress: '非法IP地址！',
        },
      };
}
