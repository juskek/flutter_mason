// import 'package:wordsmith_app/utils/index.dart';

// class CustomTextButton extends StatelessWidget {
//   const CustomTextButton(
//       {required this.text,
//       required this.onPressed,
//       required this.textStyle,
//       Key? key})
//       : super(key: key);

//   final String text;
//   final VoidCallback? onPressed;
//   final TextStyle textStyle;
//   @override
//   Widget build(BuildContext context) {
//     return TextButton(
//       onPressed: onPressed,
//       style: const ButtonStyle(visualDensity: VisualDensity.compact),
//       child: Text(
//         text,
//         style: textStyle.merge(
//           TextStyle(
//               color: onPressed == null
//                   ? ColorSet.weatheredStone
//                   : ColorSet.mountainMeadow,
//               decoration: onPressed == null
//                   ? TextDecoration.none
//                   : TextDecoration.underline),
//         ),
//       ),
//     );
//   }
// }
