import 'package:flutter/material.dart';

class HorizontalListview extends StatelessWidget {
  const HorizontalListview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      alignment: Alignment.center,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const <Widget>[
          Category(
            'Vegetarian',
          ),
          Category(
            'Chicken',
          ),
          Category(
            'Seafood',
          ),
          Category(
            'Side Orders',
          ),
          Category(
            'Desserts',
          ),
          Category(
            'Beverages',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imageCaption;

  const Category(this.imageCaption, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: InkWell(
          onTap: () {},
          child: Container(
            alignment: Alignment.topCenter,
            child: Text(
              imageCaption,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          /*ListTile(
            title: Image.network(
              imageLocation,
              width: 40.0,
              height: 40.0,
            ),
            subtitle:
          ),*/
        ),
      ),
    );
  }
}
