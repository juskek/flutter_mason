import 'package:wordsmith_app/utils/index.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    this.onPressed,
    this.child,
    Key? key,
  }) : super(key: key);

  final Function()? onPressed;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: Styles.kMinInteractiveDimension,
        child: ElevatedButton(onPressed: onPressed, child: child));
  }
}


// import 'package:wordsmith_app/utils/errors/custom_error.dart';
// import 'package:wordsmith_app/utils/index.dart';

// /// Returns Elevated Button with shadows and rounded corners
// class CustomElevatedButton extends StatelessWidget {
//   const CustomElevatedButton({
//     this.onPressed,
//     this.text,
//     this.icon,
//     this.child,
//     this.height = Styles.buttonHeight,
//     this.width = double.infinity,
//     // this.radius = Styles.borderRadius,
//     this.color,
//     this.inverted = false,
//     this.iconRight = false,
//     this.shadow = true,
//     Key? key,
//   }) : super(key: key);

//   final Function()? onPressed;
//   final String? text;
//   final Widget? icon;
//   final Widget? child;
//   final double height;
//   final double width;
//   // final double radius;

//   final Color? color;
//   final bool inverted;
//   final bool shadow;

//   /// [iconRight] is false, so the icon shows on the left by default
//   final bool iconRight;

//   @override
//   Widget build(BuildContext context) {
//     if (child != null && (text != null || icon != null)) {
//       throw CustomError(
//           'CustomElevatedButton: Child and text/icon cannot both be non null');
//     }
//     return SizedBox(
//       height: height,
//       width: width,
//       child: ElevatedButton(
//         onPressed: onPressed,
//         child: child ??
//             Stack(
//               children: [
//                 if (text != null)
//                   Center(
//                       child: ScaleDown.width(
//                     child: Text(
//                       text!,
//                       style: Styles.typography.pillButton(context,
//                           inverted: !inverted), // todo wrong style
//                     ),
//                   )),
//                 if (icon != null)
//                   Align(
//                     alignment: iconRight
//                         ? Alignment.centerRight
//                         : Alignment.centerLeft,
//                     child: icon,
//                   ),
//               ],
//             ),
//         style: ButtonStyle(
//           backgroundColor: MaterialStateProperty.resolveWith((states) {
//             if (states.contains(MaterialState.disabled)) {
//               return ColorSet.weatheredStone;
//             }
//             return color ?? (inverted ? ColorSet.white : ColorSet.black);
//           }),
//           elevation: shadow
//               ? MaterialStateProperty.resolveWith((states) {
//                   // If the button is pressed, return green, otherwise blue
//                   if (states.contains(MaterialState.disabled)) {
//                     return 0;
//                   }
//                   return Styles.shadows.shadowElevation;
//                 })
//               : MaterialStateProperty.all(0),
//           fixedSize: MaterialStateProperty.all(Size(width, height)),
//           shape: MaterialStateProperty.all(RoundedRectangleBorder(
//               borderRadius: BorderRadius.all(Radius.circular(radius)))),
//         ),
//       ),
//     );
//   }
// }
