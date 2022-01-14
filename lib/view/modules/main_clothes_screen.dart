import 'package:flutter/material.dart';

import '../../components/constants.dart';

// Similar Products state full widget
class ClothesCategoryScreen extends StatefulWidget {
  const ClothesCategoryScreen({Key? key}) : super(key: key);

  @override
  _ClothesCategoryScreenState createState() => _ClothesCategoryScreenState();
}

class _ClothesCategoryScreenState extends State<ClothesCategoryScreen> {
  var productsList = clothesCategoryList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(),
      body: GridView.builder(
        itemCount: productsList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return SimilarSingleProduct(
            prodName: productsList[index]['name'],
            prodPicture: productsList[index]['picture'],
          );
        },
      ),
    );
  }
}

// The Single Product which display in the GridView in the main home
class SimilarSingleProduct extends StatelessWidget {
  final prodName;
  final prodPicture;

  const SimilarSingleProduct({
    Key? key,
    required this.prodName,
    required this.prodPicture,
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
              onTap: () {
                /*Get.to(() => AllCategoryScreen(
                  // Here we passing the value of the products to the ProductDetails screen
                  prod_details_name: prod_name,
                  prod_details_picture: prod_picture,
                ));*/
              },
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
