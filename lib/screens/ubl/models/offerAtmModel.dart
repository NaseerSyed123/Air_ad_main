import 'package:flutter/cupertino.dart';

class OfferAtmModel{
  String titileText;
  String imagePath;
  OfferAtmModel({this.titileText, this.imagePath});
}

List<OfferAtmModel> dummyAtmList = [
  OfferAtmModel(
    titileText: 'UBL Visa Mega\nWellet Debit..',
    imagePath: 'assets/images/ubl-debit.png'
  ),
  OfferAtmModel(
      titileText: 'UBL Master\n Premium Debi..',
      imagePath: 'assets/images/ubl-master.jpg'
  ),
  OfferAtmModel(
      titileText: 'UBL Visa Mega\nWellet Debit..',
      imagePath: 'assets/images/ubl-debit.png'
  ),
  OfferAtmModel(
      titileText: 'UBL Digital\nApp',
      imagePath: 'assets/images/ubl-silver.jpg'
  ),
  OfferAtmModel(
      titileText: 'UBL Visa Mega\nWellet Debit..',
      imagePath: 'assets/images/ubl-wiz.jpg'
  ),
];
