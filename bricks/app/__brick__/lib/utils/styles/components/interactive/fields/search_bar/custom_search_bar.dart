// import 'dart:async';

// import 'package:flutter_typeahead/flutter_typeahead.dart';
// import 'package:wordsmith_app/utils/index.dart';

// class CustomSearchBar extends StatelessWidget {
//   const CustomSearchBar({
//     required this.inverted,
//     required this.suggestionsBoxController,
//     this.suggestionsBoxMaxHeight = double.infinity,
//     required this.focusNode,
//     required this.suggestionsCallback,
//     required this.itemBuilder,
//     required this.onSuggestionSelected,
//     this.resultsDirection = AxisDirection.up,
//     Key? key,
//   }) : super(key: key);

//   final bool inverted;
//   final AxisDirection resultsDirection;

//   final double suggestionsBoxMaxHeight;

//   final SuggestionsBoxController? suggestionsBoxController;
//   final FocusNode focusNode;

//   final FutureOr<Iterable<Object?>> Function(String) suggestionsCallback;
//   final Widget Function(BuildContext, Object?) itemBuilder;
//   final void Function(Object?) onSuggestionSelected;
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: Styles.buttonHeight,
//       width: double.infinity,
//       child: TypeAheadField(
//         debounceDuration: const Duration(milliseconds: 500),
//         suggestionsBoxController: suggestionsBoxController,
//         direction: resultsDirection,
//         textFieldConfiguration: TextFieldConfiguration(
//             // cursor only shown when searchbar in focus
//             cursorColor: inverted ? ColorSet.black : ColorSet.white,
//             textAlign: TextAlign.left,
//             textAlignVertical: TextAlignVertical.center,
//             focusNode: focusNode,
//             autofocus: false,
//             style: Styles.typography.searchBar(context, inverted: !inverted),
//             decoration: InputDecoration(
//                 hintText: '',
//                 hintStyle:
//                     Styles.typography.searchBar(context, inverted: !inverted),
//                 fillColor:
//                     inverted ? ColorSet.white : ColorSet.black,
//                 focusColor:
//                     inverted ? ColorSet.white : ColorSet.black,
//                 filled: true,
//                 border: OutlineInputBorder(
//                     borderSide: BorderSide.none,
//                     borderRadius: Styles.radii.borderRadius))),
//         // decoration for each result
//         suggestionsBoxDecoration: SuggestionsBoxDecoration(
//             color: ColorSet.transparent,
//             elevation: 0,
//             constraints: BoxConstraints(
//               maxHeight: suggestionsBoxMaxHeight,
//             ),
//             borderRadius: Styles.radii.borderRadius),
//         suggestionsCallback: suggestionsCallback,
//         itemBuilder: itemBuilder,
//         onSuggestionSelected: onSuggestionSelected,
//       ),
//     );
//   }
// }
