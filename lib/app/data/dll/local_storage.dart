import 'package:localstorage/localstorage.dart';

class Storages {
  static LocalStorage storages = localStorage;

  static Future<void> setKodeBahasa(String kodeBahasa) async {
    storages.removeItem('kodeBahasa');
    storages.setItem('kodeBahasa', kodeBahasa);
  }

  static void setIndexLanguage(int index) {
    storages.removeItem('indexLanguage');
    storages.setItem('indexLanguage', index.toString());
  }

  static String get getkodeBahasa => storages.getItem('kodeBahasa') ?? 'id';
  static int get getIndexLanguage =>
      int.parse(storages.getItem('indexLanguage') ?? '0');
}
