// import 'package:wordsmith_app/utils/index.dart';

// class CustomSearchBarHints extends StatelessWidget {
//   const CustomSearchBarHints({
//     required this.shown,
//     this.inverted = false,
//     required this.hint,
//     required this.onTapSearchIcon,
//     required this.onTapCancelIcon,
//     Key? key,
//   }) : super(key: key);
//   final bool shown;
//   final bool inverted;
//   final String hint;
//   final void Function()? onTapSearchIcon;
//   final void Function()? onTapCancelIcon;
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: Styles.buttonHeight,
//       child: Stack(
//         children: [
//           if (shown)
//             Center(
//               child: IgnorePointer(
//                 child: Text(
//                   hint,
//                   style:
//                       Styles.typography.searchBar(context, inverted: inverted),
//                 ),
//               ),
//             ),
//           Align(
//             alignment: Alignment.centerRight,
//             child: shown
//                 ? InkWell(
//                     child: Padding(
//                       padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
//                       child: Styles.iconography
//                           .searchIcon(context, size: 36, inverted: inverted),
//                     ),
//                     onTap: onTapSearchIcon,
//                   )
//                 : InkWell(
//                     child: Padding(
//                       padding: const EdgeInsets.fromLTRB(0, 0, 24, 0),
//                       child: Styles.iconography
//                           .cancelIcon(context, size: 20, inverted: inverted),
//                     ),
//                     onTap: onTapCancelIcon,
//                   ),
//           ),
//         ],
//       ),
//     );
//   }
// }
