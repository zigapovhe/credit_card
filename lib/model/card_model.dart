import 'package:flutter/painting.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:credit_card/style/styles.dart';

class CardModel {
  CardModel({
    this.height,
    this.width,
    this.frontTextStyle,
    this.backTextStyle,
    this.animeDuration,
    this.frontCardColor,
    this.backCardColor,
    this.numberMask = '0000 0000 0000 0000',
    this.cvvMask = '0000',
    this.nameMask = 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAA',
    this.expiryMask = '00/00',
    this.numberDefaultLabel,
    this.nameDefaultLabel,
    this.expiryDefaultLabel,
  }) {
    numberController = MaskedTextController(mask: numberMask);
    cvvController = MaskedTextController(mask: cvvMask);
    nameController = MaskedTextController(mask: nameMask);
    expiryController = MaskedTextController(mask: expiryMask);

    animeDuration = animationDuration(animeDuration);
    numberDefaultLabel = numberLabel(numberDefaultLabel);
    expiryDefaultLabel = expiryLabel(expiryDefaultLabel);
    nameDefaultLabel = nameLabel(nameDefaultLabel);

    controllers = <MaskedTextController>[
      numberController,
      cvvController,
      nameController,
      expiryController
    ];
  }

  MaskedTextController numberController;
  MaskedTextController cvvController;
  MaskedTextController nameController;
  MaskedTextController expiryController;
  String numberDefaultLabel;
  String nameDefaultLabel;
  String expiryDefaultLabel;

  List<MaskedTextController> controllers;

  Duration animeDuration;
  final String numberMask;
  final String cvvMask;
  final String nameMask;
  final String expiryMask;
  final double height;
  final double width;
  final TextStyle frontTextStyle;
  final TextStyle backTextStyle;
  final Color frontCardColor;
  final Color backCardColor;
}