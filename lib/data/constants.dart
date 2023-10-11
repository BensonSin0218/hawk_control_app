class AppInformation {
  static const String companyName = 'ArchiTech';
  static const String appName = 'Hawk Control';
}

class Durations {
  static const Duration animate = Duration(milliseconds: 500);
  static const Duration errorSnackBar = Duration(seconds: 3);
  static const Duration pageViewer = Duration(milliseconds: 500);
}

// Storages
class StorageKeys {
  static const String languageCode = 'languageCode';
  static const String countryCode = 'countryCode';
  static const String hasReadIntroduction = 'hasReadIntroduction';
}

// Translations
class TranslationKeys {
  static const String connect = 'connect';
  static const String ipAddress = 'ipAddress';
}

class PageTranslationKeys {
  static const String introductionPageTitle = 'introductionPageTitle';

  static const String startPageTitle = 'startPageTitle';
  static const String startPageConnectToNewDrone = 'startPageConnectToNewDrone';
  static const String startPageUseLastDrone = 'startPageUseLastDrone';

  static const String connectionPageTitle = 'connectionPageTitle';

  static const String notFoundPageTitle = 'notFoundPageTitle';
}

class ErrorTranslationKeys {
  static const String error = 'error';

  // Messages
  static const String illegalIPAddress = 'illegalIPAddress';
}
