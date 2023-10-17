import 'package:get/route_manager.dart';
import 'package:hawk_control_app/data/translations/keys.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          TranslationKeys.connect: 'Connect',
          TranslationKeys.ipAddress: 'IP Address',
          TranslationKeys.waitingStream: 'Wait Streaming...',
          ThemeTranslationKeys.lightTheme: 'Light Theme',
          ThemeTranslationKeys.darkTheme: 'Dark Theme',
          LocaleTranslationKeys.locale: 'Locale',
          PageTranslationKeys.introductionPageTitle: 'Introduction Page',
          PageTranslationKeys.introductionPage1Title: 'Introduction 1',
          PageTranslationKeys.introductionPage1Description:
              'Introduction 1 Description',
          PageTranslationKeys.introductionPage2Title: 'Introduction 2',
          PageTranslationKeys.introductionPage2Description:
              'Introduction 2 Description',
          PageTranslationKeys.startPageTitle: 'Start Page',
          PageTranslationKeys.startPageConnectToNewDrone:
              'Connect to new drone!',
          PageTranslationKeys.connectionPageTitle: 'Connection Page',
          ErrorTranslationKeys.error: 'Error',
          ErrorTranslationKeys.illegalIPAddress: 'Illegal IP address!',
        },
        'zh_CN': {
          TranslationKeys.connect: '连接',
          TranslationKeys.ipAddress: 'IP地址',
          TranslationKeys.waitingStream: '等待流媒体...',
          ThemeTranslationKeys.lightTheme: '淺色主題',
          ThemeTranslationKeys.darkTheme: '黑暗主题',
          LocaleTranslationKeys.locale: '语言环境',
          PageTranslationKeys.introductionPageTitle: '简介页',
          PageTranslationKeys.introductionPage1Title: '简介 1',
          PageTranslationKeys.introductionPage1Description: '简介 1 Description',
          PageTranslationKeys.introductionPage2Title: '简介 2',
          PageTranslationKeys.introductionPage2Description: '简介 2 Description',
          PageTranslationKeys.startPageTitle: '起始页',
          PageTranslationKeys.startPageConnectToNewDrone: '连接到新的无人机!',
          PageTranslationKeys.connectionPageTitle: '连接页面',
          ErrorTranslationKeys.error: '错误',
          ErrorTranslationKeys.illegalIPAddress: '非法IP位址！',
        },
        'zh_HK': {
          TranslationKeys.connect: '连接',
          TranslationKeys.ipAddress: 'IP地址',
          TranslationKeys.waitingStream: '等待串流媒體...',
          ThemeTranslationKeys.lightTheme: '淺色主題',
          ThemeTranslationKeys.darkTheme: '黑暗主題',
          LocaleTranslationKeys.locale: '語言環境',
          PageTranslationKeys.introductionPageTitle: '簡介頁',
          PageTranslationKeys.introductionPage1Title: '簡介 1',
          PageTranslationKeys.introductionPage1Description: '簡介 1 Description',
          PageTranslationKeys.introductionPage2Title: '簡介 2',
          PageTranslationKeys.introductionPage2Description: '簡介 2 Description',
          PageTranslationKeys.startPageTitle: '起始頁',
          PageTranslationKeys.startPageConnectToNewDrone: '連接到新的無人機!',
          PageTranslationKeys.connectionPageTitle: '連接頁面',
          ErrorTranslationKeys.error: '錯誤',
          ErrorTranslationKeys.illegalIPAddress: '非法IP地址！',
        },
      };
}
