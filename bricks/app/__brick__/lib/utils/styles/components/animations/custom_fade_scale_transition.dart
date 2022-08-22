import 'package:animations/animations.dart';
import 'package:wordsmith_app/utils/index.dart';

class CustomFadeScaleTransition extends StatefulWidget {
  const CustomFadeScaleTransition({required this.child, Key? key})
      : super(key: key);
  final Widget child;
  @override
  State<CustomFadeScaleTransition> createState() =>
      _CustomFadeScaleTransitionState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _CustomFadeScaleTransitionState extends State<CustomFadeScaleTransition>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  );
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );

  @override
  void initState() {
    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeScaleTransition(
      animation: _animation,
      child: widget.child,
    );
  }
}
