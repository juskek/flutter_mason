import 'package:honeycomb_app/utils/index.dart';

/// Different from CustomOpacityOpenClose because it does not maintain state,
/// so child widget is not still there registering hits
class CustomVisibilityAnimation extends StatefulWidget {
  const CustomVisibilityAnimation({
    required this.child,
    required this.open,
    this.duration = const Duration(seconds: 1),
    Key? key,
  }) : super(key: key);
  final Widget child;
  final Duration duration;

  /// Set to true to start open animation, false to start close animation
  final bool open;

  @override
  State<CustomVisibilityAnimation> createState() =>
      _CustomFadeOpenCloseAnimationState();
}

class _CustomFadeOpenCloseAnimationState
    extends State<CustomVisibilityAnimation> with TickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;

  @override
  Widget build(BuildContext context) {
    _controller ??= AnimationController(
      lowerBound: 0,
      upperBound: 1,
      duration: widget.duration,
      vsync: this,
    );
    _animation ??= CurvedAnimation(
      parent: _controller!,
      curve: Curves.easeIn,
    );
    if (widget.open) {
      _controller?.reset();
      _controller?.forward();
    } else {
      _controller?.reset();
      _controller?.reverse();
    }
    return FadeTransition(
      opacity: _animation!,
      child: widget.child,
    );
  }
}
