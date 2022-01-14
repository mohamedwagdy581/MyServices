import 'package:flutter/material.dart';
import 'package:flutter_overboard/flutter_overboard.dart';
import 'package:ikhdemny/view/login_screen.dart';

import '../components/components.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  final _pages = [
    PageModel(
      color: const Color(0xff109791),
      imageAssetPath: 'assets/images/de.png',
      title: 'بنخدمك',
      body: 'اطلب اللى تبيه ونوصلك في اسرع وقت',
      doAnimateImage: true,
    ),
    PageModel(
      color: const Color(0xff109791),
      imageAssetPath: 'assets/images/foodDelivery.png',
      title: 'تبى تاكل؟',
      body:
          'بضغطة زر تختار اللى تشتهيه وتطلب اللى تبيه و في خدمتك نوصلك في اسرع وقت',
      doAnimateImage: true,
    ),
    PageModel(
      color: const Color(0xff664d7b),
      imageAssetPath: 'assets/images/med.png',
      title: 'ادويتك عندنا',
      body: 'معانا تقدر تطلب الادوية ونوصلك للبيت.. راحتك تهمنا',
      doAnimateImage: true,
    ),
    PageModel(
      color: const Color(0xff664d7b),
      imageAssetPath: 'assets/images/electrical.png',
      title: 'الادوات الكهربائية',
      body: 'تقدر تطلب كل الادوات الكهربائية وتوصلك في وقت قصير',
      doAnimateImage: true,
    ),
    PageModel(
      color: const Color(0xff04364f),
      imageAssetPath: 'assets/images/toLocation.png',
      title: 'حدد مكانك',
      body: 'كل اللى عليك تحدد مكانك وتطلب واحنا فى خدمتك وبنوصلك للبيت',
      doAnimateImage: true,
    ),
    PageModel(
      color: const Color(0xff04364f),
      imageAssetPath: 'assets/images/payment.png',
      title: 'تبى كاش ولا فيزا؟',
      body: 'ما عليك كل اللى تبيه موجود تبى تدفع اونلاين موجود تبى كاش موجود',
      doAnimateImage: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OverBoard(
        pages: _pages,
        showBullets: true,
        skipCallback: () => navigateAndFinish(context, const LoginScreen()),
        finishCallback: () => navigateAndFinish(context, const LoginScreen()),
      ),
    );
  }
}
