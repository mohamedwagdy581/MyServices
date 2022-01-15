import 'package:flutter/material.dart';

import '../../../widgets/horizontal_listview.dart';

class KfcMenuScreen extends StatefulWidget {
  const KfcMenuScreen({Key? key}) : super(key: key);

  @override
  _KfcMenuScreenState createState() => _KfcMenuScreenState();
}

class _KfcMenuScreenState extends State<KfcMenuScreen> {
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
                  return buildOrderRow();
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    thickness: 4.0,
                  );
                },
                itemCount: 15,
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

  Widget buildOrderRow() {
    return InkWell(
      onTap: () {},
      child: ListTile(
        title: const Padding(
          padding: EdgeInsets.only(bottom: 5.0, top: 5.0),
          child: Text(
            '10 Piece Chicken Nuggets Mael',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Crunchy to perfection. includes a bun, fries.',
            ),
            Row(
              children: const [
                Icon(
                  Icons.label,
                  color: Colors.blue,
                ),
                Text('1262 Kcal'),
                SizedBox(
                  width: 10.0,
                ),
                Icon(
                  Icons.whatshot,
                  color: Colors.grey,
                ),
                Text('1262 Kcal'),
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
