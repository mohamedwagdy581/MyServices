import 'package:flutter/material.dart';
import 'package:ikhdemny/components/constants.dart';
import 'package:ikhdemny/widgets/card_category.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: KmainColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 25.0),
          child: CardProducts(),
        ),
      ),
    );
  }
}
