// import 'package:wordsmith_app/utils/index.dart';

// class CustomTextFormField extends StatelessWidget {
//   const CustomTextFormField({
//     required this.initialValue,
//     required this.hintText,
//     required this.validator,
//     required this.onSaved,
//     required this.onChanged,
//     this.focusNode,
//     this.keyboardType = TextInputType.text,
//     this.textCapitalization = TextCapitalization.words,
//     this.enabled = true,
//     Key? key,
//   }) : super(key: key);
//   final String? initialValue;
//   final String? hintText;
//   final String? Function(String?)? validator;
//   final void Function(String?)? onSaved;
//   final void Function(String)? onChanged;
//   final TextInputType keyboardType;
//   final TextCapitalization textCapitalization;
//   final bool enabled;
//   final FocusNode? focusNode;
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       focusNode: focusNode,
//       enabled: enabled,
//       textCapitalization: textCapitalization,
//       initialValue: initialValue,
//       keyboardType: keyboardType,
//       decoration: InputDecoration(
//         hintText: hintText,
//         enabledBorder: const UnderlineInputBorder(
//           borderSide: BorderSide(color: ColorSet.black),
//         ),
//         disabledBorder: const UnderlineInputBorder(
//           borderSide: BorderSide(color: ColorSet.weatheredStone),
//         ),
//         errorBorder: const UnderlineInputBorder(
//           borderSide: BorderSide(color: ColorSet.outrageousOrange),
//         ),
//         focusedBorder: const UnderlineInputBorder(
//           borderSide: BorderSide(color: ColorSet.mountainMeadow),
//         ),
//       ),
//       autofocus: false,
//       autocorrect: false,
//       validator: validator,
//       onChanged: onChanged,
//       onSaved: onSaved,
//     );
//   }
// }
