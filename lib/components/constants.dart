import 'package:flutter/material.dart';

const Color KmainColor = Color(0xff109791);
const mainDeepBlueColor = Color(0xff2766f6);
const mainLightBlueColor = Color(0xff4ca1ee);
const mainWhiteColor = Color(0xfffefefb);
const mainBlackColor = Color(0xff404040);

// Build GradientBackground
Widget mainBackground({
  Widget? child,
}) =>
    Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.03, 0.1, 0.68, 0.8, 0.88, 0.99],
          colors: [
            Color(0xff4ca1ee),
            Color(0xff2766f6),
            Colors.blue,
            Color(0xff4ca1ee),
            Colors.blueAccent,
            Color(0xff2766f6),
          ],
        ),
      ),
      child: child,
    );

// Arabic Category Card
var arCategoryCard = [
  {
    'name': 'طعام',
    'picture': 'assets/images/eat.png',
  },
  {
    'name': 'دواء',
    'picture': 'assets/images/medicine.png',
  },
  {
    'name': 'أدوات اليكترونية',
    'picture': 'assets/images/electronics.png',
  },
  {
    'name': 'أدوات سباكة',
    'picture': 'assets/images/plumber.png',
  },
  {
    'name': 'ملابس',
    'picture': 'assets/images/clothes.png',
  },
  {
    'name': 'مكتبة',
    'picture': 'assets/images/library.png',
  },
  {
    'name': 'أثاث منزلي',
    'picture': 'assets/images/furniture.png',
  },
];

// English Category Card
var enCategoryCard = [
  {
    'name': 'Food',
    'picture': 'assets/images/eat.png',
  },
  {
    'name': 'medicine',
    'picture': 'assets/images/medicine.png',
  },
  {
    'name': 'electronics',
    'picture': 'assets/images/electronics.png',
  },
  {
    'name': 'plumber',
    'picture': 'assets/images/plumber.png',
  },
  {
    'name': 'clothes',
    'picture': 'assets/images/clothes.png',
  },
  {
    'name': 'library',
    'picture': 'assets/images/library.png',
  },
  {
    'name': 'furniture',
    'picture': 'assets/images/furniture.png',
  },
];

// Food Category Card
var foodCategoryList = [
  {
    'name': 'البيك',
    'picture': 'assets/images/baik/baik.png',
  },
  {
    'name': 'دجاج كنتاكي',
    'picture': 'assets/images/kfc/kfc.png',
  },
  {
    'name': 'الطازج',
    'picture': 'assets/images/tazaj.png',
  },
  {
    'name': 'شاورما',
    'picture': 'assets/images/shawrmar.png',
  },
  {
    'name': 'ماكدونالدز',
    'picture': 'assets/images/mac/mac.png',
  },
  {
    'name': 'هارديز',
    'picture': 'assets/images/hardees.png',
  },
  {
    'name': 'بيت الطعمية',
    'picture': 'assets/images/tamia.png',
  },
  {
    'name': 'بيت الفواكه',
    'picture': 'assets/images/bayt.png',
  },
  {
    'name': 'فول وتميس الغامدى',
    'picture': 'assets/images/tames.jpg',
  },
];

// Electronics Category Card
var electronicsCategoryList = [
  {
    'name': 'طعام',
    'picture': 'assets/images/eat.png',
  },
  {
    'name': 'دواء',
    'picture': 'assets/images/medicine.png',
  },
  {
    'name': 'أدوات اليكترونية',
    'picture': 'assets/images/electronics.png',
  },
  {
    'name': 'أدوات اليكترونية',
    'picture': 'assets/images/electronics.png',
  },
  {
    'name': 'أدوات اليكترونية',
    'picture': 'assets/images/electronics.png',
  },
  {
    'name': 'أدوات اليكترونية',
    'picture': 'assets/images/electronics.png',
  },
  {
    'name': 'أدوات اليكترونية',
    'picture': 'assets/images/electronics.png',
  },
  {
    'name': 'أدوات سباكة',
    'picture': 'assets/images/plumber.png',
  },
];

// Plumber Category Card
var plumberCategoryList = [
  {
    'name': 'طعام',
    'picture': 'assets/images/eat.png',
  },
  {
    'name': 'دواء',
    'picture': 'assets/images/medicine.png',
  },
  {
    'name': 'أدوات اليكترونية',
    'picture': 'assets/images/electronics.png',
  },
  {
    'name': 'أدوات سباكة',
    'picture': 'assets/images/plumber.png',
  },
  {
    'name': 'أدوات سباكة',
    'picture': 'assets/images/plumber.png',
  },
  {
    'name': 'أدوات سباكة',
    'picture': 'assets/images/plumber.png',
  },
  {
    'name': 'أدوات سباكة',
    'picture': 'assets/images/plumber.png',
  },
  {
    'name': 'أدوات سباكة',
    'picture': 'assets/images/plumber.png',
  },
  {
    'name': 'أدوات سباكة',
    'picture': 'assets/images/plumber.png',
  },
];

// Furniture Category Card
var furnitureCategoryList = [
  {
    'name': 'طعام',
    'picture': 'assets/images/eat.png',
  },
  {
    'name': 'دواء',
    'picture': 'assets/images/medicine.png',
  },
  {
    'name': 'أدوات اليكترونية',
    'picture': 'assets/images/electronics.png',
  },
  {
    'name': 'أدوات سباكة',
    'picture': 'assets/images/plumber.png',
  },
  {
    'name': 'أثاث منزلي',
    'picture': 'assets/images/furniture.png',
  },
  {
    'name': 'أثاث منزلي',
    'picture': 'assets/images/furniture.png',
  },
  {
    'name': 'أثاث منزلي',
    'picture': 'assets/images/furniture.png',
  },
  {
    'name': 'أثاث منزلي',
    'picture': 'assets/images/furniture.png',
  },
  {
    'name': 'أثاث منزلي',
    'picture': 'assets/images/furniture.png',
  },
  {
    'name': 'أثاث منزلي',
    'picture': 'assets/images/furniture.png',
  },
  {
    'name': 'أثاث منزلي',
    'picture': 'assets/images/furniture.png',
  },
];

// Medicine Category Card
var medicineCategoryList = [
  {
    'name': 'طعام',
    'picture': 'assets/images/eat.png',
  },
  {
    'name': 'دواء',
    'picture': 'assets/images/medicine.png',
  },
  {
    'name': 'أدوات اليكترونية',
    'picture': 'assets/images/electronics.png',
  },
  {
    'name': 'أدوات سباكة',
    'picture': 'assets/images/plumber.png',
  },
  {
    'name': 'medicine',
    'picture': 'assets/images/medicine.png',
  },
  {
    'name': 'medicine',
    'picture': 'assets/images/medicine.png',
  },
  {
    'name': 'medicine',
    'picture': 'assets/images/medicine.png',
  },
  {
    'name': 'medicine',
    'picture': 'assets/images/medicine.png',
  },
  {
    'name': 'medicine',
    'picture': 'assets/images/medicine.png',
  },
];

// Library Category Card
var libraryCategoryList = [
  {
    'name': 'طعام',
    'picture': 'assets/images/eat.png',
  },
  {
    'name': 'دواء',
    'picture': 'assets/images/medicine.png',
  },
  {
    'name': 'أدوات اليكترونية',
    'picture': 'assets/images/electronics.png',
  },
  {
    'name': 'أدوات سباكة',
    'picture': 'assets/images/plumber.png',
  },
  {
    'name': 'مكتبة',
    'picture': 'assets/images/library.png',
  },
  {
    'name': 'مكتبة',
    'picture': 'assets/images/library.png',
  },
  {
    'name': 'مكتبة',
    'picture': 'assets/images/library.png',
  },
  {
    'name': 'مكتبة',
    'picture': 'assets/images/library.png',
  },
  {
    'name': 'مكتبة',
    'picture': 'assets/images/library.png',
  },
];

// Clothes Category Card
var clothesCategoryList = [
  {
    'name': 'طعام',
    'picture': 'assets/images/eat.png',
  },
  {
    'name': 'دواء',
    'picture': 'assets/images/medicine.png',
  },
  {
    'name': 'أدوات اليكترونية',
    'picture': 'assets/images/electronics.png',
  },
  {
    'name': 'ملابس',
    'picture': 'assets/images/clothes.png',
  },
  {
    'name': 'ملابس',
    'picture': 'assets/images/clothes.png',
  },
  {
    'name': 'ملابس',
    'picture': 'assets/images/clothes.png',
  },
  {
    'name': 'ملابس',
    'picture': 'assets/images/clothes.png',
  },
  {
    'name': 'ملابس',
    'picture': 'assets/images/clothes.png',
  },
  {
    'name': 'ملابس',
    'picture': 'assets/images/clothes.png',
  },
  {
    'name': 'ملابس',
    'picture': 'assets/images/clothes.png',
  },
  {
    'name': 'ملابس',
    'picture': 'assets/images/clothes.png',
  },
  {
    'name': 'ملابس',
    'picture': 'assets/images/clothes.png',
  },
  {
    'name': 'أدوات سباكة',
    'picture': 'assets/images/plumber.png',
  },
  {
    'name': 'أدوات سباكة',
    'picture': 'assets/images/plumber.png',
  },
  {
    'name': 'أدوات سباكة',
    'picture': 'assets/images/plumber.png',
  },
  {
    'name': 'أدوات سباكة',
    'picture': 'assets/images/plumber.png',
  },
  {
    'name': 'أدوات سباكة',
    'picture': 'assets/images/plumber.png',
  },
  {
    'name': 'أدوات سباكة',
    'picture': 'assets/images/plumber.png',
  },
];
