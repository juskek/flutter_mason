import 'package:wordsmith_app/utils/index.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
    this.onPressed,
    required this.child,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: Styles.kMinInteractiveDimension,
      child: OutlinedButton(
        // style: OutlinedButton.styleFrom(
        //     side: const BorderSide(color: Colors.deepPurple)),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
