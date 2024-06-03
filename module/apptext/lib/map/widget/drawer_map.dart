import 'package:apptext/apptext.dart';

final class DrawerTextLang extends ITextLang {
  const DrawerTextLang();
  //
  String get home => get('home');
  String get settings => get('settings');
  String get profile => get('profile');
  String get logout => get('logout');
  //
  @override
  LangTypeDef get map => {
        'home': {
          LangType.en.name: 'Home',
          LangType.tr.name: 'Anasayfa',
        },
        'settings': {
          LangType.en.name: 'Settings',
          LangType.tr.name: 'Ayarlar',
        },
        'profile': {
          LangType.en.name: 'Profile',
          LangType.tr.name: 'Profil',
        },
        'logout': {
          LangType.en.name: 'Logout',
          LangType.tr.name: 'Çıkış',
        },
      };
}
