import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

Future<String> translates(
  String text, {
  String? to,
  required String kodeBahasa,
}) async {
  String translate;
  try {
    var translates =
        await GoogleTranslator().translate(text, to: to ?? kodeBahasa);
    translate = translates.text;
  } catch (e) {
    translate = text;
  }
  return translate;
}

FutureBuilder<String> translateTeks(
  String text, {
  required String kodeBahasa,
  required TextStyle style,
  TextAlign? textAlign,
  int? maxLines,
  TextOverflow? overflow,
}) {
  return FutureBuilder<String>(
    future: translates(text, kodeBahasa: kodeBahasa),
    builder: (context, snapshot) {
      if (snapshot.hasData && snapshot.data != null) {
        return Text(
          snapshot.data!,
          style: style,
          textAlign: textAlign,
          maxLines: maxLines,
          overflow: overflow,
        );
      } else {
        return Text(
          text,
          style: style,
          textAlign: textAlign,
          maxLines: maxLines,
          overflow: overflow,
        );
      }
    },
  );
}

Widget teksLanguage(
  String text, {
  required String kodeBahasa,
  required TextStyle style,
  TextAlign? textAlign,
  int? maxLines,
  TextOverflow? overflow,
}) {
  return kodeBahasa == 'en'
      ? Text(
          text,
          style: style,
          textAlign: textAlign,
          maxLines: maxLines,
          overflow: overflow,
        )
      : translateTeks(
          text,
          kodeBahasa: kodeBahasa,
          style: style,
          textAlign: textAlign,
          maxLines: maxLines,
          overflow: overflow,
        );
}
