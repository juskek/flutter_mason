import 'package:wordsmith_app/utils/index.dart';

class IconContainer extends StatelessWidget {
  const IconContainer(this.mainContext,
      {required this.icon, this.inverted = false, Key? key})
      : super(key: key);
  final BuildContext mainContext;
  final Icon icon;
  final bool inverted;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            color: inverted
                ? Theme.of(mainContext).colorScheme.background
                : Theme.of(mainContext).colorScheme.onBackground,
            borderRadius: Styles.radii.borderRadius),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: FittedBox(child: icon),
        ));
  }
}
