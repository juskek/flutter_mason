import 'package:wordsmith_app/utils/index.dart';

class Iconography {
  const Iconography();

  Icon _customIcon(BuildContext context, IconData iconData,
      {required double size, required bool inverted, Color? color}) {
    if (inverted) {
      return Icon(iconData,
          size: size, color: color ?? Theme.of(context).colorScheme.background);
    }
    return Icon(iconData,
        size: size, color: color ?? Theme.of(context).colorScheme.onBackground);
  }

  Icon errorIcon(BuildContext context,
      {bool inverted = false, double size = 24, Color? color}) {
    return _customIcon(context, Icons.error,
        size: size, inverted: inverted, color: color);
  }
}
