import 'package:flutter/material.dart';

class LevelsText extends StatelessWidget {
  final int currentLevel;
  static String text;

  LevelsText(this.currentLevel);

  @override
  Widget build(BuildContext context) {
    if (currentLevel == 1) {
      return Text('Уровень 1');
    }
    if (currentLevel == 2) {
      return Text('1. Завести тетрадь для записей.');
    }
    if (currentLevel == 3) {
      return Text(
          '1. Выписать в тетрадь для записей 5-10 причин быть финансово образованным.');
    }
    if (currentLevel == 4) {
      return Text(
          '1. Определи какой ты сейчас, какие у тебя характеристики и запиши это. 2. Определи свою лучшую версию себя и также запиши это.');
    }
    if (currentLevel == 5) {
      return Text(
          '1. Какой жизнью ты бы хотел жить через 5-10 лет? Запиши в тетрадь жизнь мечты.');
    }
    if (currentLevel == 6) {
      return Text(
          '1. Придумай свой метод повышения уверенности в себе и запиши в тетрадь.');
    }
    if (currentLevel == 7) {
      return Text('Уровень 7');
    }
    if (currentLevel == 8) {
      return Text('Уровень 8');
    }
    if (currentLevel == 9) {
      return Text('Уровень 9');
    }
    if (currentLevel == 10) {
      return Text('Уровень 10');
    }
    if (currentLevel == 11) {
      return Text('Уровень 11');
    }
    if (currentLevel == 12) {
      return Text('Уровень 12');
    }
  }
}
