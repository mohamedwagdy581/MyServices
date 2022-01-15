import 'package:flutter/material.dart';
import 'package:ikhdemny/view/foodScreen/baik_menu/baikModel.dart';

import '../../../widgets/horizontal_listview.dart';

class BaikMenuScreen extends StatefulWidget {
  const BaikMenuScreen({Key? key}) : super(key: key);

  @override
  _BaikMenuScreenState createState() => _BaikMenuScreenState();
}

class _BaikMenuScreenState extends State<BaikMenuScreen> {
  var baikMenue = baikMenuList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              SizedBox(
                height: 198,
                child: Image.network(
                    'https://www.thaqfny.com/wp-content/uploads/2020/12/%D8%A3%D8%B3%D8%B9%D8%A7%D8%B1-%D9%85%D9%86%D9%8A%D9%88-%D8%A7%D9%84%D8%A8%D9%8A%D9%83-%D9%84%D9%84%D8%B3%D9%86%D8%A9-%D8%A7%D9%84%D8%AC%D8%AF%D9%8A%D8%AF%D8%A9.jpg'),
              ),
              Container(
                color: Colors.black,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                child: Container(
                  height: 150,
                  width: 350.0,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(
                                    right: 15.0,
                                    top: 10.0,
                                    bottom: 10.0,
                                  ),
                                  child: Text(
                                    'AL BAIK',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                ),
                                Text(
                                    'Fast Food, Arabian Food, Traditional Food'),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Text('4.4'),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              priceAndDeliveryAndTimeColumn(
                                  price: '15.0 SR', title: 'Minimum'),
                              priceAndDeliveryAndTimeColumn(
                                  price: '16.0 SR', title: 'Delivery'),
                              priceAndDeliveryAndTimeColumn(
                                  price: '50 - 60 minutes',
                                  title: 'Delivery Time'),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const HorizontalListview(),
          const SizedBox(
            height: 10.0,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(
              'Vegetarian',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 450,
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return buildListTileMenu(
                    title: baikMenue[index]['title'],
                    description: baikMenue[index]['description'],
                    image: baikMenue[index]['image'],
                    price: baikMenue[index]['price'],
                    kcal: baikMenue[index]['kcal'],
                  );
                  /*buildOrderRow(
                      title: baikMenue[index]['title'].toString(),
                      description: '',
                      image: '',
                      price: '',
                      kcal: '',
                  );*/
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    thickness: 4.0,
                  );
                },
                itemCount: baikMenue.length,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget priceAndDeliveryAndTimeColumn({
    required String price,
    required String title,
  }) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            price,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(title)
        ],
      ),
    );
  }

  Widget buildOrderRow({
    required String title,
    required String image,
    required String description,
    required String price,
    String? oldPrice,
    required String kcal,
  }) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        title: Padding(
          padding: const EdgeInsets.only(bottom: 5.0, top: 5.0),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              description,
            ),
            Row(
              children: [
                const Icon(
                  Icons.label,
                  color: Colors.blue,
                ),
                Text('$price SR'),
                const SizedBox(
                  width: 10.0,
                ),
                const Icon(
                  Icons.whatshot,
                  color: Colors.grey,
                ),
                Text('$kcal Kcal'),
              ],
            ),
          ],
        ),
        trailing: Image.asset(
          'assets/images/eat.png',
          width: 60.0,
          height: 60.0,
        ),
      ),
    );
  }
}

class buildListTileMenu extends StatefulWidget {
  final dynamic title;
  final dynamic image;
  final dynamic description;
  final dynamic price;
  final dynamic oldPrice;
  final dynamic kcal;

  const buildListTileMenu({
    Key? key,
    this.title,
    this.image,
    this.description,
    this.price,
    this.oldPrice,
    this.kcal,
  }) : super(key: key);

  @override
  _buildListTileMenuState createState() => _buildListTileMenuState();
}

class _buildListTileMenuState extends State<buildListTileMenu> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        title: Padding(
          padding: const EdgeInsets.only(bottom: 5.0, top: 5.0),
          child: Text(
            widget.title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.description,
            ),
            Row(
              children: [
                const Icon(
                  Icons.label,
                  color: Colors.blue,
                ),
                Text('${widget.price} SR'),
                const SizedBox(
                  width: 10.0,
                ),
                const Icon(
                  Icons.whatshot,
                  color: Colors.grey,
                ),
                Text('${widget.kcal} Kcal'),
              ],
            ),
          ],
        ),
        trailing: Image.asset(
          'assets/images/eat.png',
          width: 60.0,
          height: 60.0,
        ),
      ),
    );
  }
}
