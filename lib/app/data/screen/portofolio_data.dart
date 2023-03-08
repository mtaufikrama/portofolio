import 'package:portofolio/app/data/dll/assets.dart';
import 'package:portofolio/app/data/object_class/porto_class.dart';
import 'package:flutter/material.dart';

final listPortofolio = <Portfolio>[
  DataPorto.thrilogic,
  DataPorto.mecrypt,
  DataPorto.crofflite,
  DataPorto.bayu,
];

class DataPorto {
  static const thrilogic = Portfolio(
    nama: 'ThriLogic',
    logo: Porto.thrilogic,
    deskripsi:
        'ThriLogic is an application that makes it easier for users to buy thrift products or quality used goods at the best prices. Users can purchase thrift products online and enjoy a more convenient and efficient shopping experience.',
    tujuan:
        'ThriLogic was created to simplify the process of buying thrift products or quality used goods at the best prices. This application helps users find the items they want at a more affordable price.',
    frame: Porto.frameThriLogic,
    primaryColor: Color.fromRGBO(255, 110, 42, 1),
    secondaryColor: Color.fromRGBO(166, 87, 55, 1),
    urlAndroid:
        'https://drive.google.com/drive/folders/1FcygwjRk471Skf2SiNRsuT6vVhAmNGQq?usp=share_link',
    urlWebsite: 'https://thrilogic.metir.my.id/',
    team: [
      Team(
        nama: 'Muhammad Taufik Ramadhan',
        image: Porto.taufik,
        sebagai: 'Project Manager & UX Developer',
      ),
      Team(
        nama: 'Roni Setiawan',
        image: Porto.roni,
        sebagai: 'UI / UX Designer',
      ),
      Team(
        nama: 'Delvy Toding Sandatoding',
        image: Porto.delvy,
        sebagai: 'UI Developer',
      ),
      Team(
        nama: 'Yozi Berlinda',
        image: Porto.yozi,
        sebagai: 'UI Developer',
      ),
    ],
    fitur: [
      'It has light mode and dark mode features so that users are more comfortable in shopping.',
      'Admin ability to add, update, and delete products.',
      'Uses the lottie package for animation which makes the UI more attractive.',
    ],
    teknologi: [
      'Flutter as a framework for developing android applications and websites.',
      'Provider as State Management.',
      'API from Mitra Nurul Fikri to read, add, update and delete products data.',
    ],
  );
  static const mecrypt = Portfolio(
    nama: 'MeCrypt',
    logo: Porto.mecrypt,
    frame: Porto.frameMeCrypt,
    primaryColor: Color.fromARGB(255, 0, 6, 183),
    secondaryColor: Color.fromRGBO(0, 16, 71, 1),
    tujuan:
        'MeCrypt aims to allow users to simulate crypto currency transactions before making actual transactions.',
    team: [
      Team(
        image: Porto.taufik,
        nama: 'Muhammad Taufik Ramadhan',
        sebagai: 'All Jobs',
      ),
    ],
    urlAndroid:
        'https://drive.google.com/drive/folders/1KBushKHmGik-iVd1D04_nUHJRes-suCW?usp=share_link',
    urlWebsite: 'https://mecrypt.metir.my.id/',
    deskripsi:
        'MeCrypt is a cryptocurrency simulation application that allows users to buy and track the exchange rates of various cryptocurrencies such as Bitcoin, Ethereum and Litecoin. This app has a real-time feature that allows users to view continuously updated prices of cryptocurrencies.',
    fitur: [
      'Has a list of popular cryptocurrencies to choose from and track.',
      'Data is stored locally using the Hive package.',
      'There is a wishlist feature so users can monitor the cryptocurrency they want to buy later.',
      'Attractive User Interface and dark mode to make it comfortable to look at.',
    ],
    teknologi: [
      'Flutter as a framework for developing mobile applications and websites.',
      'Hive as local database.',
      'Indodax API to get real-time cryptocurrency exchange rate data.',
    ],
  );

  static const crofflite = Portfolio(
    nama: 'Crofflite',
    logo: Porto.crofflite,
    frame: Porto.frameCrofflite,
    primaryColor: Color.fromARGB(255, 251, 209, 123),
    secondaryColor: Color.fromARGB(255, 238, 163, 38),
    tujuan:
        'Crofflite is designed to help croffle sellers optimize their business and increase efficiency in managing queues and finances every day.',
    team: [
      Team(
        image: Porto.taufik,
        nama: 'Muhammad Taufik Ramadhan',
        sebagai: 'All Jobs',
      ),
    ],
    urlAndroid:
        'https://drive.google.com/drive/folders/1GCPOIhq13goRju4D9AhBsh54HDRtuo9S?usp=share_link',
    urlWebsite: 'https://mecrypt.metir.my.id/',
    deskripsi:
        'Crofflite is an application to help croffle sellers manage their customer queues and daily financial planning.',
    fitur: [
      'Has a buyer queue feature that allows croffle sellers to see the number of buyers waiting in the queue.',
      'Calculates the croffle sellers daily sales turnover based on the sales data entered.',
      'Has a feature to calculate the total purchases of each buyer, so sellers can easily find out the contribution of each buyer to their sales.',
      'Sellers can view their overall sales performance and perform further analysis.',
    ],
    teknologi: [
      'Flutter as a framework for developing mobile applications and websites.',
      'Localstorage as local database.',
    ],
  );
  static const bayu = Portfolio(
    nama: 'Bayu',
    logo: Porto.bayu,
    frame: Porto.frameBayu,
    primaryColor: Color.fromARGB(255, 0, 188, 241),
    secondaryColor: Color.fromARGB(255, 35, 136, 182),
    tujuan:
        'Bayu aims to try to make the user interface of the by.u application.',
    team: [
      Team(
        image: Porto.taufik,
        nama: 'Muhammad Taufik Ramadhan',
        sebagai: 'All Jobs',
      ),
    ],
    urlAndroid:
        'https://drive.google.com/drive/folders/1lVklQGknaLIJXBsUzKMJjH24OVt66WYK?usp=share_link',
    urlWebsite: 'https://bayu.metir.my.id/',
    deskripsi:
        'Bayu is an application that was redesigned from the by.u application.',
    fitur: [],
    teknologi: [],
  );
}
