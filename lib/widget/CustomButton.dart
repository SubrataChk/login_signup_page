import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color? color;
  final Function onPressed;

  const CustomButton(
      {Key? key, this.color, required this.onPressed, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width / 2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: color,
      ),
      child: MaterialButton(
        elevation: 18,
        hoverColor: Colors.redAccent,
        onPressed: onPressed(),
        child: Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}

// ElevatedButton(
//       style: ElevatedButton.styleFrom(
//           primary: Color(0xff003638),
//           shadowColor: Colors.black,
//           elevation: 10,
//           minimumSize: Size(200, 50),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(30),
//           )),
//       onPressed: () {},
//       child: Text(
//         "Login",
//         style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//       ),
//     );
