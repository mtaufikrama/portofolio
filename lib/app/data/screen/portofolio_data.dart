import 'package:portofolio/app/data/dll/assets.dart';
import 'package:portofolio/app/data/dll/kategori.dart';
import 'package:portofolio/app/data/object_class/porto_class.dart';
import 'package:flutter/material.dart';

final listPortofolio = <Portfolio>[
  DataPorto.thrilogic,
  DataPorto.mecrypt,
  DataPorto.crofflite,
  DataPorto.bayu,
  DataPorto.wikenyus,
];

class DataPorto {
  static const wikenyus = Portfolio(
    nama: 'Wikenyus',
    logo: Porto.wikenyus,
    deskripsi: 'deskripsi',
    kategori: Kategori.selfMade,
    tujuan: 'tujuan',
    frame: Porto.frameWikenyus,
    frameAndroid: 3,
    frameWebsite: 0,
    primaryColor: Color.fromARGB(255, 255, 0, 0),
    secondaryColor: Color.fromARGB(255, 136, 0, 0),
    urlAndroid:
        'https://drive.google.com/drive/folders/1_2zvGR2nXTzWXXjYqBxz4RVBRlZR23Ta?usp=share_link',
    urlWebsite: '',
    team: [
      Team(
        nama: 'Muhammad Taufik Ramadhan',
        image: Porto.taufik,
        sebagai: 'Full Stack Developer',
      ),
    ],
    fitur: [],
    teknologi: [],
  );
  static const thrilogic = Portfolio(
    nama: 'ThriLogic',
    logo: Porto.thrilogic,
    deskripsi:
        'ThriLogic is an application designed to facilitate users in purchasing thrift products or high-quality used goods at the most competitive prices. Through this application, users can conveniently buy thrift products online and enjoy a more efficient shopping experience.',
    tujuan:
        'ThriLogic was created to simplify the process of buying thrift products or high-quality used goods at the best prices. This application helps users find the items they want at a more affordable price.',
    kategori: Kategori.collab,
    frame: Porto.frameThriLogic,
    frameAndroid: 3,
    frameWebsite: 0,
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
      'Admin has the ability to add, update, and delete products.',
      'The application uses the Lottie package for animations, which makes the UI more attractive.',
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
    frameAndroid: 3,
    frameWebsite: 3,
    primaryColor: Color.fromARGB(255, 0, 6, 183),
    secondaryColor: Color.fromRGBO(0, 16, 71, 1),
    tujuan:
        'MeCrypt aims to enable users to simulate cryptocurrency transactions before making actual transactions.',
    kategori: Kategori.selfMade,
    team: [
      Team(
        image: Porto.taufik,
        nama: 'Muhammad Taufik Ramadhan',
        sebagai: 'Full Stack Developer',
      ),
    ],
    urlAndroid:
        'https://drive.google.com/drive/folders/1KBushKHmGik-iVd1D04_nUHJRes-suCW?usp=share_link',
    urlWebsite: 'https://mecrypt.metir.my.id/',
    deskripsi:
        'MeCrypt is a cryptocurrency simulation application that enables users to purchase and track exchange rates of various cryptocurrencies, such as Bitcoin, Ethereum, and Litecoin. This app features a real-time function that allows users to view continuously updated cryptocurrency prices.',
    fitur: [
      'Includes a list of popular cryptocurrencies that users can choose from and track.',
      'Stores data locally using the Hive package.',
      'Features a wishlist function that allows users to monitor cryptocurrencies they plan to purchase in the future.',
      'Offers an attractive user interface and a dark mode option for comfortable viewing.',
    ],
    teknologi: [
      'Uses Flutter as a framework for developing mobile applications and websites.',
      'Uses Hive as the local database.',
      'Utilizes the Indodax API to obtain real-time cryptocurrency exchange rate data.',
    ],
  );

  static const crofflite = Portfolio(
    nama: 'Crofflite',
    logo: Porto.crofflite,
    frame: Porto.frameCrofflite,
    frameAndroid: 3,
    frameWebsite: 0,
    primaryColor: Color.fromARGB(255, 251, 209, 123),
    secondaryColor: Color.fromARGB(255, 238, 163, 38),
    tujuan:
        'Crofflite is designed to assist croffle sellers in optimizing their business and increasing efficiency in managing queues and finances on a daily basis.',
    kategori: Kategori.selfMade,
    team: [
      Team(
        image: Porto.taufik,
        nama: 'Muhammad Taufik Ramadhan',
        sebagai: 'Full Stack Developer',
      ),
    ],
    urlAndroid:
        'https://drive.google.com/drive/folders/1GCPOIhq13goRju4D9AhBsh54HDRtuo9S?usp=share_link',
    urlWebsite: '',
    deskripsi:
        'Crofflite is an application designed to help croffle sellers manage their customer queues and daily financial planning.',
    fitur: [
      'Features a buyer queue function that allows croffle sellers to view the number of customers waiting in the queue.',
      'Calculates the croffle sellers daily sales turnover based on the entered sales data.',
      'Includes a feature to calculate the total purchases made by each buyer, making it easy for sellers to determine each buyers contribution to their sales.',
      'Enables sellers to view their overall sales performance and conduct further analysis.',
    ],
    teknologi: [
      'Uses Flutter as a framework for developing mobile applications and websites.',
      'Utilizes Localstorage as the local database.',
    ],
  );
  static const bayu = Portfolio(
    nama: 'Bayu',
    logo: Porto.bayu,
    frame: Porto.frameBayu,
    frameAndroid: 3,
    frameWebsite: 3,
    primaryColor: Color.fromARGB(255, 0, 188, 241),
    secondaryColor: Color.fromARGB(255, 35, 136, 182),
    tujuan: 'Bayu aims to improve the user interface of the By.U application.',
    kategori: Kategori.reDesign,
    team: [
      Team(
        image: Porto.taufik,
        nama: 'Muhammad Taufik Ramadhan',
        sebagai: 'Full Stack Developer',
      ),
    ],
    urlAndroid:
        'https://drive.google.com/drive/folders/1lVklQGknaLIJXBsUzKMJjH24OVt66WYK?usp=share_link',
    urlWebsite: 'https://bayu.metir.my.id/',
    deskripsi:
        'Bayu is an application that has been redesigned from the By.U application.',
    fitur: [],
    teknologi: [],
  );
}
