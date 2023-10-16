import 'dart:ui';

enum Language {
  enUS(emoji: '🇺🇸', name: 'English - US', locale: Locale('en', 'UK')),
  zhCN(emoji: '🇨🇳', name: '简体中文', locale: Locale('zh', 'CN')),
  zhHK(emoji: '🇭🇰', name: '繁體中文', locale: Locale('zh', 'HK'));

  const Language(
      {required this.emoji, required this.name, required this.locale});

  final String emoji;
  final String name;
  final Locale locale;

  String get getDisplayName => '$emoji $name';
  Locale get getLocale => locale;
}
