import 'package:flutter/material.dart';
import 'package:ikhdemny/components/constants.dart';

// Default TextFormField
Widget defaultTextField({
  required IconData prefix,
  IconData? suffix,
  required String label,
  required Function() onTap,
  String? Function(String?)? validate,
  String? Function(String?)? onSubmit,
  String? Function(String?)? onChange,
  VoidCallback? isSuffix,
  bool isPassword = false,
  TextEditingController? controller,
  TextInputType? keyboardType,
  bool isClickable = true,
}) =>
    TextFormField(
      controller: controller,
      validator: validate,
      keyboardType: keyboardType,
      onTap: onTap,
      onFieldSubmitted: onSubmit,
      obscureText: isPassword,
      onChanged: onChange,
      enabled: isClickable,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(prefix),
        suffixIcon: IconButton(
          icon: Icon(suffix),
          onPressed: isSuffix,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );

// Default Button
Widget defaultButton({
  required VoidCallback onPressed,
  required String title,
  Color buttonColor = KmainColor,
  Color textColor = Colors.white,
}) {
  return TextButton(
    onPressed: onPressed,
    style: TextButton.styleFrom(
      backgroundColor: buttonColor,
    ),
    child: Text(
      title,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: textColor,
      ),
    ),
  );
}

// Forget Password or Register

Widget buildRegisterRow({
  required String text,
  required String btnText,
  required VoidCallback onPress,
}) =>
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 14.0,
            color: Color(0xff404040),
          ),
        ),
        TextButton(
          onPressed: onPress,
          child: Text(
            btnText,
            style: const TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
              color: Color(0xff2766f6),
            ),
          ),
        ),
      ],
    );

// Navigate To
void navigateTo(
  context,
  widget,
) =>
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => widget),
    );

// Navigate and Remove the priviest page
void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
      (route) => false,
    );

// MainButton
class MinScreenBtn extends StatelessWidget {
  final String btnText;
  final VoidCallback onPress;
  const MinScreenBtn({
    Key? key,
    required this.onPress,
    required this.btnText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: height * 0.01),
      child: SizedBox(
        width: width * 0.7,
        height: height * 0.06,
        child: MaterialButton(
          onPressed: onPress,
          color: const Color(0xffee8f8b),
          shape: const StadiumBorder(),
          child: Text(btnText),
        ),
      ),
    );
  }
}

/*void showToast({required String text, required ToastState state}) =>
    Fluttertoast.showToast(
      msg: text,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 5,
      backgroundColor: Colors.green,
      textColor: Colors.white,
      fontSize: 16.0,
    );*/

enum ToastState { SUCCESS, ERROR, WARNING }

Color chooseToastColor(ToastState state) {
  Color color;
  switch (state) {
    case ToastState.SUCCESS:
      color = Colors.green;
      break;
    case ToastState.ERROR:
      color = Colors.red;
      break;
    case ToastState.WARNING:
      color = Colors.amber;
      break;
  }
  return color;
}

// Function to print the all message
void printFullText(String text) {
  final pattern = RegExp('.{1,800}'); // 800 is the size of each chunt
  pattern.allMatches(text).forEach((match) => print(match.group(0)));
}
