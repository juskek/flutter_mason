import 'package:flutter/material.dart';
import 'package:wordsmith_app/ui/styles/styles.dart';

class TypographySet {
  /// Material Design 2021 spec
  /// https://api.flutter.dev/flutter/material/TextTheme-class.html
  /// Parent style picked based on closest "look", lol just pick any one
  /// tbh and adjust accordingly

  const TypographySet();

  // final ScaffoldTypography scaffold = const ScaffoldTypography();
  // final FormTypography form = const FormTypography();
  // final SessionTypography session = const SessionTypography();
  // final SearchTypography search = const SearchTypography();
  // final SiteFinderTypography siteFinder = const SiteFinderTypography();
  // final HivePassTypography hivePass = const HivePassTypography();
  // final NotificationTypography notification = const NotificationTypography();
  // final SessionHistoryTypography sessionHistory =
  //     const SessionHistoryTypography();

  TextStyle header(BuildContext context, {bool inverted = false}) {
    return Theme.of(context).textTheme.headlineLarge!;
  }

  TextStyle subtitle(BuildContext context, {bool inverted = false}) {
    return Theme.of(context).textTheme.headlineSmall!;
  }

  TextStyle wordStack(BuildContext context, {bool warning = false}) {
    return Theme.of(context).textTheme.headlineSmall!.merge(TextStyle(
          color: warning ? ColorSet.persian : ColorSet.black,
          fontSize: 24,
          height: 2,
        ));
  }

  TextStyle rapLineHeader(BuildContext context, {Color? color}) {
    return Theme.of(context).textTheme.headlineSmall!.merge(TextStyle(
          fontSize: 16,
          color: color ?? ColorSet.blueMunsell,
        ));
  }

  TextStyle rapLineBody(BuildContext context, {Color? color}) {
    return Theme.of(context).textTheme.headlineSmall!.merge(TextStyle(
          fontSize: 18,
          color: color,
        ));
  }

  TextStyle body(BuildContext context, {Color? color}) {
    return Theme.of(context).textTheme.headlineSmall!.merge(TextStyle(
          fontSize: 20,
          color: color,
        ));
  }

  TextStyle small(BuildContext context, {Color? color}) {
    return Theme.of(context).textTheme.headlineSmall!.merge(TextStyle(
          fontSize: 14,
          height: 1,
          color: color,
        ));
  }

  TextStyle outlinedButton(BuildContext context, {Color? color}) {
    return Theme.of(context).textTheme.button!.merge(TextStyle(
          fontSize: 20,
          color: color,
        ));
  }
}
