import 'package:flutter/material.dart';
import 'package:ikhdemny/view/foodScreen/baik_menu/baik_menu_screen.dart';
import 'package:ikhdemny/view/foodScreen/hardeesScreen/hardeesScreen.dart';
import 'package:ikhdemny/view/foodScreen/kfcScreen/kfcMenuScreen.dart';
import 'package:ikhdemny/view/foodScreen/mac_menu/mac_menu_screen.dart';
import 'package:ikhdemny/view/foodScreen/shawermaScreen/shawermaScreen.dart';
import 'package:ikhdemny/view/foodScreen/tamiaScreen/tamiaScreen.dart';
import 'package:ikhdemny/view/foodScreen/tazaj_menu/tazaj_menu_screen.dart';

import '../../components/components.dart';
import '../../components/constants.dart';
import '../home_screen.dart';

// Similar Products state full widget
class FoodCategoryScreen extends StatefulWidget {
  const FoodCategoryScreen({Key? key}) : super(key: key);

  @override
  _FoodCategoryScreenState createState() => _FoodCategoryScreenState();
}

class _FoodCategoryScreenState extends State<FoodCategoryScreen> {
  var productsList = foodCategoryList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 10),
              child: IconButton(
                onPressed: () {
                  navigateAndFinish(context, const HomeScreen());
                },
                icon: const Icon(
                  Icons.arrow_back,
                  size: 35,
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: productsList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return SimilarSingleProduct(
                    prodName: productsList[index]['name'],
                    prodPicture: productsList[index]['picture'],
                    onTap: () {
                      var prodName = productsList[index]['name'];
                      if (prodName == 'البيك') {
                        navigateTo(context, const BaikMenuScreen());
                      } else if (prodName == 'دجاج كنتاكي') {
                        navigateTo(
                            context,
                            const KfcMenuScreen(
                              mainTitle: 'KFC',
                              mainImage: 'assets/images/kfc/kfc.png',
                            ));
                      } else if (prodName == 'الطازج') {
                        navigateTo(
                            context,
                            const TazajMenuScreen(
                              mainTitle: 'Tazaj',
                              mainImage: 'assets/images/tazaj.png',
                            ));
                      } else if (prodName == 'شاورما') {
                        navigateTo(
                            context,
                            const ShawermaMenuScreen(
                              mainTitle: 'Shawerma',
                              mainImage: 'assets/images/shawrmar.png',
                            ));
                      } else if (prodName == 'ماكدونالدز') {
                        navigateTo(
                            context,
                            const MacMenuScreen(
                              mainTitle: 'Macdonalds',
                              mainImage: 'assets/images/mac/mac.png',
                            ));
                      } else if (prodName == 'هارديز') {
                        navigateTo(
                            context,
                            const HardeesMenuScreen(
                              mainTitle: 'Hardees',
                              mainImage: 'assets/images/hardees.png',
                            ));
                      } else if (prodName == 'بيت الطعمية') {
                        navigateTo(
                            context,
                            const TamiaMenuScreen(
                              mainTitle: 'بيت الطعمية',
                              mainImage: 'assets/images/tamia.png',
                            ));
                      }
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// The Single Product which display in the GridView in the main home
class SimilarSingleProduct extends StatelessWidget {
  final prodName;
  final prodPicture;
  final onTap;

  const SimilarSingleProduct({
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
        child: Hero(
          tag: Text(prodName),
          child: Material(
            // We can wrap an InkWell Widget by Hero Widget with tag : prod_name
            child: InkWell(
              onTap: onTap,
              child: GridTile(
                footer: Container(
                  height: 40,
                  color: Colors.white70,
                  child: Text(
                    prodName,
                    style: const TextStyle(
                      fontSize: 22.0,
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
      ),
    );
  }
}
