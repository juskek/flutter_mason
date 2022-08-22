import 'package:after_layout/after_layout.dart';
import 'package:honeycomb_app/utils/index.dart';

class CustomFadeTransition extends StatefulWidget {
  const CustomFadeTransition({
    required this.child,
    this.repeat = false,
    this.duration = const Duration(seconds: 1),
    Key? key,
  }) : super(key: key);
  final Widget child;
  final bool repeat;
  final Duration duration;
  @override
  State<CustomFadeTransition> createState() => _CustomFadeTransitionState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _CustomFadeTransitionState extends State<CustomFadeTransition>
    with TickerProviderStateMixin, AfterLayoutMixin {
  AnimationController? _controller;

  Animation<double>? _animation;

  // @override
  // void initState() {
  //   _controller.forward();
  //   super.initState();
  // }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  void afterFirstLayout(BuildContext context) {
    if (widget.repeat) {
      _controller!.repeat(reverse: true);
    } else {
      _controller!.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    _controller ??= AnimationController(
      lowerBound: 0.6,
      upperBound: 1,
      duration: widget.duration,
      vsync: this,
    );
    _animation ??= CurvedAnimation(
      parent: _controller!,
      curve: Curves.easeIn,
    );
    return FadeTransition(
      opacity: _animation!,
      child: widget.child,
    );
  }
}
