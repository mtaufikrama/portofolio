import 'package:portofolio/app/data/object_class/isi_class.dart';

import 'kontak_data.dart';
import 'myskill_data.dart';
import 'pengalaman_data.dart';
import 'portofolio_data.dart';
import 'sertif_data.dart';

final Map<String, Isi> isi = {
  'about': const Isi(
    title: 'About Me',
    subtitle:
        "I am an expert in the field of mobile development using the Flutter framework. Currently, I am a student majoring in Informatics at Gunadarma University, with a current total GPA of 3.48. I enjoy learning about the Flutter framework and experimenting with it. Additionally, I am a conscientious, patient, and reliable person.",
  ),
  'soft_skill': Isi(
    title: 'Soft Skill',
    subtitle: listSoftSkill,
  ),
  'hard_skill': Isi(
    title: 'Hard Skill',
    subtitle: listHardSkill,
  ),
  'certificate': Isi(
    title: 'Certificate',
    subtitle: listCertificate,
  ),
  'experience': Isi(
    title: 'Experience',
    subtitle: listPengalaman,
  ),
  'portofolio': const Isi(
    title: 'Portfolio',
    subtitle: listPortofolio,
  ),
  'kontak': Isi(
    title: 'Contacts & Social Media',
    subtitle: listKontak,
  ),
};
