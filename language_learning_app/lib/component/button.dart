// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class ButtonToScreen extends StatelessWidget {
  final buttonHeight;
  final buttonWidth;
  final title;
  final VoidCallback onPress;
  const ButtonToScreen(
      {super.key,
      required this.title,
      required this.onPress,
      this.buttonHeight=125.0,this.buttonWidth});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width * 0.911;
    return InkWell(
      onTap: onPress,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Container(
          height: buttonHeight,
          width: buttonWidth??screenWidth,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(20.0)),
          child: Center(
              child: Text(
            '$title',
            style: Theme.of(context).textTheme.headlineMedium,
          )),
        ),
      ),
    );
  }
}
// ignore_for_file: prefer_const_constructors

// class RoundButton extends StatelessWidget {
//   final String title;
//   final VoidCallback onPress;
//   const RoundButton({super.key, required this.title, required this.onPress});
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onPress,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 5.0),
//         child: Container(
//           height: 45,
//           width: 200,
//           decoration: BoxDecoration(
//             color: Color(0xffFDA521),
//             borderRadius: BorderRadius.circular(20),
//           ),
//           child: Center(
//             child: Text(
//               title,
//               style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.w400,
//                   color: Colors.white),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
