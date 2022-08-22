import 'package:honeycomb_app/utils/index.dart';

/// Parent class of all concrete state classes.
///
/// Extend this class when create a concrete state class, and implement
/// initState() and disposeState() to ensure state management is performed.
abstract class CustomState extends ChangeNotifier {
  String get stateName;
  void initState(BuildContext context);

  void disposeState(BuildContext context);

  void notify() {
    Printer.print(stateName, 'notifyListeners');
    notifyListeners();
  }
}
