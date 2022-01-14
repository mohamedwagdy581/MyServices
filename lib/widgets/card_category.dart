import 'package:flutter/material.dart';
import 'package:ikhdemny/components/constants.dart';
import 'package:ikhdemny/view/modules/main_electronics_screen.dart';
import 'package:ikhdemny/view/modules/main_food_screen.dart';
import 'package:ikhdemny/view/modules/main_library_screen.dart';
import 'package:ikhdemny/view/modules/main_medicine_screen.dart';
import 'package:ikhdemny/view/modules/main_plumber_screen.dart';

import '../components/components.dart';
import '../view/modules/main_clothes_screen.dart';
import '../view/modules/main_furniture_screen.dart';

class CardProducts extends StatefulWidget {
  const CardProducts({Key? key}) : super(key: key);

  @override
  _CardProductsState createState() => _CardProductsState();
}

class _CardProductsState extends State<CardProducts> {
  var categoryCard = arCategoryCard;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: categoryCard.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (BuildContext context, int index) {
        return SingleProduct(
          onTap: () {},
          prodName: categoryCard[index]['name'],
          prodPicture: categoryCard[index]['picture'],
        );
      },
    );
  }
}

// The Single Product which display in the GridView in the main home
class SingleProduct extends StatelessWidget {
  final prodName;
  final prodPicture;
  final VoidCallback onTap;

  const SingleProduct({
    Key? key,
    required this.prodName,
    required this.prodPicture,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      margin: const EdgeInsets.all(10.0),
      child: ClipPath(
        clipper: ShapeBorderClipper(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Material(
          // We can wrap an InkWell Widget by Hero Widget with tag : prod_name
          child: InkWell(
            onTap: () {
              if (prodName == 'طعام') {
                navigateTo(context, const FoodCategoryScreen());
              } else if (prodName == 'دواء') {
                navigateTo(context, const MedicineCategoryScreen());
              } else if (prodName == 'أدوات اليكترونية') {
                navigateTo(context, const ElectronicsCategoryScreen());
              } else if (prodName == 'أدوات سباكة') {
                navigateTo(context, const PlumberCategoryScreen());
              } else if (prodName == 'ملابس') {
                navigateTo(context, const ClothesCategoryScreen());
              } else if (prodName == 'مكتبة') {
                navigateTo(context, const LibraryCategoryScreen());
              } else if (prodName == 'أثاث منزلي') {
                navigateTo(context, const FurnitureCategoryScreen());
              }
            },
            child: GridTile(
              footer: Container(
                height: 40,
                color: Colors.white70,
                child: Text(
                  prodName,
                  style: const TextStyle(
                    fontSize: 23.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              child: Image.asset(
                prodPicture,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
