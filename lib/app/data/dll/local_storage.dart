import 'package:localstorage/localstorage.dart';

class Storages {
  static LocalStorage storages = LocalStorage('myporto');

  static Future<void> setKodeBahasa(String kodeBahasa) async {
    await storages.deleteItem('kodeBahasa');
    await storages.setItem('kodeBahasa', kodeBahasa);
  }

  static Future<void> setIndexLanguage(int index) async {
    await storages.deleteItem('indexLanguage');
    await storages.setItem('indexLanguage', index);
  }

  static String get getkodeBahasa => storages.getItem('kodeBahasa') ?? 'id';
  static int get getIndexLanguage => storages.getItem('indexLanguage') ?? 0;
}
