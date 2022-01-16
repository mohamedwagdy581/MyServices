import 'package:flutter/material.dart';
import 'package:ikhdemny/components/components.dart';
import 'package:ikhdemny/model/foodModels/tamiaModel.dart';
import 'package:ikhdemny/view/foodScreen/main_food_screen.dart';

import '../../../../../widgets/horizontal_listview.dart';

class TamiaMenuScreen extends StatefulWidget {
  final String mainTitle;
  final String mainImage;

  const TamiaMenuScreen({
    Key? key,
    required this.mainTitle,
    required this.mainImage,
  }) : super(key: key);

  @override
  _TamiaMenuScreenState createState() => _TamiaMenuScreenState();
}

class _TamiaMenuScreenState extends State<TamiaMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              SizedBox(
                height: 250,
                child: Stack(
                  children: [
                    Image.asset(
                      widget.mainImage,
                    ),
                    Container(
                      height: 40,
                      alignment: Alignment.topRight,
                      color: Colors.transparent,
                      padding: const EdgeInsets.only(top: 10.0, right: 15.0),
                      child: IconButton(
                        onPressed: () {
                          navigateAndFinish(
                              context, const FoodCategoryScreen());
                        },
                        icon: const Icon(
                          Icons.close,
                          color: Colors.black,
                          size: 40,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                child: Container(
                  height: 160,
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
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 15.0,
                                    top: 10.0,
                                    bottom: 10.0,
                                  ),
                                  child: Text(
                                    widget.mainTitle,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                ),
                                const Text(
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
                  // Here we pass data from the list model
                  TamiaModel kfcList = tamiaMenuList[index];
                  return buildMenuListTile(
                    title: kfcList.title,
                    description: kfcList.description,
                    image: kfcList.image,
                    price: kfcList.price,
                    kcal: kfcList.kcal,
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    thickness: 4.0,
                  );
                },
                itemCount: tamiaMenuList.length,
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
    return ListTile(
      onTap: () {},
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
    );
  }
}

Widget buildMenuListTile({
  required String title,
  required String description,
  required String image,
  required String price,
  required String kcal,
}) {
  return ListTile(
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
      image,
      width: 60.0,
      height: 60.0,
    ),
  );
}
