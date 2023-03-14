import 'package:flutter/material.dart';
import 'package:portofolio/app/data/dll/packages.dart';

class Portfolio {
  final String nama;
  final String logo;
  final String frame;
  final int frameAndroid;
  final int frameWebsite;
  final Color primaryColor;
  final Color secondaryColor;
  final String tujuan;
  final List<Team> team;
  final String urlAndroid;
  final String urlWebsite;
  final String deskripsi;
  final List<String> fitur;
  final List<PackagesModel> depedencies;
  final List<String> teknologi;
  final String kategori;
  const Portfolio({
    required this.nama,
    required this.logo,
    required this.deskripsi,
    required this.kategori,
    required this.tujuan,
    required this.frame,
    required this.frameAndroid,
    required this.frameWebsite,
    required this.primaryColor,
    required this.depedencies,
    required this.secondaryColor,
    required this.urlAndroid,
    required this.urlWebsite,
    required this.team,
    required this.fitur,
    required this.teknologi,
  });
}

class Team {
  final String nama;
  final String image;
  final String sebagai;
  const Team({
    required this.nama,
    required this.image,
    required this.sebagai,
  });
}
