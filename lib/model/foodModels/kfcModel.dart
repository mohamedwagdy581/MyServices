class KfcModel {
  final String title;
  final String image;
  final String description;
  final String price;
  final String? oldPrice;
  final String kcal;

  KfcModel({
    required this.title,
    required this.description,
    required this.image,
    required this.price,
    this.oldPrice,
    required this.kcal,
  });
}

List<KfcModel> kfcMenuList = [
  KfcModel(
    title: 'KFC',
    description: 'Crunchy to perfection, includes a bun, fries.',
    image: 'assets/images/kfc/kfc.png',
    price: '19.50',
    oldPrice: '26.50',
    kcal: '1262',
  ),
  KfcModel(
    title: 'KFC',
    description: 'Crunchy to perfection, includes a bun, fries.',
    image: 'assets/images/kfc/kfc.png',
    price: '19.50',
    oldPrice: '26.50',
    kcal: '1262',
  ),
  KfcModel(
    title: 'KFC',
    description:
        '5 Piece Chicken finger. perfict for those hunger pangs between meals.',
    image: 'assets/images/baik/filletSnacks.jpg',
    price: '9.00',
    oldPrice: '26.50',
    kcal: '158',
  ),
  KfcModel(
    title: 'Chicken Fillet Sandwich',
    description:
        'Chicken fillet nugget wrapped in arabic bread with garlic sauce, pickles and fries.',
    image: 'assets/images/baik/chickenSanndwich.png',
    price: 'price',
    oldPrice: '26.50',
    kcal: '373',
  ),
  KfcModel(
    title: 'Albaik Shawerma With Garlic Sauce.',
    description: 'Grilled chicken shawerma sandwich with garlic sauce.',
    image: 'assets/images/baik/shawrma.png',
    price: '9.00',
    oldPrice: '26.50',
    kcal: '1200',
  ),
  KfcModel(
    title: 'Chicken Fillet Burger',
    description:
        'Chicken fillet in our signature burger buns with pickles and our special sauce.',
    image: 'assets/images/baik/burger.png',
    price: '6.50',
    oldPrice: '26.50',
    kcal: '348',
  ),
  KfcModel(
    title: 'Saj De Lite',
    description:
        'Grilled chicken fillet sandwich with our special delite sauce.',
    image: 'assets/images/baik/baik.png',
    price: '9.00',
    oldPrice: '26.50',
    kcal: '248',
  ),
  KfcModel(
    title: 'Tawuk',
    description:
        'Grilled chicken fillet sandwich with our signature garlic sauce, pickles and fries.',
    image: 'assets/images/baik/baik.png',
    price: '9.00',
    oldPrice: '26.50',
    kcal: '448',
  ),
  KfcModel(
    title: 'Tawuk',
    description:
        'Grilled chicken fillet sandwich with our signature garlic sauce, pickles and fries.',
    image: 'assets/images/baik/baik.png',
    price: '9.00',
    oldPrice: '26.50',
    kcal: '448',
  ),
  KfcModel(
    title: 'Tawuk',
    description:
        'Grilled chicken fillet sandwich with our signature garlic sauce, pickles and fries.',
    image: 'assets/images/baik/baik.png',
    price: '9.00',
    oldPrice: '26.50',
    kcal: '448',
  ),
  KfcModel(
    title: 'Tawuk',
    description:
        'Grilled chicken fillet sandwich with our signature garlic sauce, pickles and fries.',
    image: 'assets/images/baik/baik.png',
    price: '9.00',
    oldPrice: '26.50',
    kcal: '448',
  ),
  KfcModel(
    title: 'Tawuk',
    description:
        'Grilled chicken fillet sandwich with our signature garlic sauce, pickles and fries.',
    image: 'assets/images/baik/baik.png',
    price: '9.00',
    oldPrice: '26.50',
    kcal: '448',
  ),
  KfcModel(
    title: 'Tawuk',
    description:
        'Grilled chicken fillet sandwich with our signature garlic sauce, pickles and fries.',
    image: 'assets/images/baik/baik.png',
    price: '9.00',
    oldPrice: '26.50',
    kcal: '448',
  ),
];
