class Sertif {
  static const sertifMSIB = 'assets/sertif/msib.jpg';
  static const sertifIOT = 'assets/sertif/iot.jpg';
  static const sertifHaloFTI = 'assets/sertif/halofti.jpg';
  static const sertifCompetency = 'assets/sertif/competency.jpg';
  static const sertifSerathon = 'assets/sertif/serathon.jpg';
  static const msib = 'assets/logo/msib.png';
  static const kampusMerdeka = 'assets/logo/kampus_merdeka.png';
  static const edspert = 'assets/logo/edspert.png';
  static const bemfti = 'assets/logo/bemfti.jpg';
}

class Porto {
  static String android(String project, {required int index1}) =>
      'assets/portofolio/$project/andro$index1.png';
  static String website(String project, {required int index1}) =>
      'assets/portofolio/$project/web$index1.png';
  static const taufik = 'assets/portofolio/avatar/taufik.png';
  static const delvy = 'assets/portofolio/avatar/delvy.png';
  static const roni = 'assets/portofolio/avatar/roni.png';
  static const yozi = 'assets/portofolio/avatar/yozi.png';
  static const bayu = 'assets/portofolio/bayu/bayu.png';
  static const crofflite = 'assets/portofolio/crofflite/crofflite.png';
  static const mecrypt = 'assets/portofolio/mecrypt/mecrypt.jpg';
  static const thrilogic = 'assets/portofolio/thrilogic/thrilogic.jpg';
  static const wikenyus = 'assets/portofolio/wikenyus/wikenyus.png';
  static const frameBayu = 'assets/portofolio/bayu/frame_bayu.png';
  static const frameWikenyus = 'assets/portofolio/wikenyus/frame_wikenyus.png';
  static const frameCrofflite =
      'assets/portofolio/crofflite/frame_crofflite.png';
  static const frameMeCrypt = 'assets/portofolio/mecrypt/frame_mecrypt.png';
  static const frameThriLogic =
      'assets/portofolio/thrilogic/frame_thrilogic.png';
}

class Foto {
  static const fotoprofil = 'assets/foto/pp.png';
}

class Pendidikan {
  static String gunadarma = driveGoogle('1DELTMWn_Yqws9b5CGOUJeXY2OURcgXwD');
  static String sman102 = driveGoogle('1KkDbifIaotKLI1oH4WevfbyXR7ebWgO3');
}

String driveGoogle(String id) =>
    'https://drive.google.com/uc?export=view&id=$id';
