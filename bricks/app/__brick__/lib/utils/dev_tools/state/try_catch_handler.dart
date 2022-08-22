import 'package:wordsmith_app/utils/index.dart';

/// Asynchronous try and catch handler to reduce boilerplate
///
/// Should be called in a State file
Future<dynamic> asyncTryCatchHandler(
    {Future<dynamic> Function()? tryFunction,
    Map<Exception, Future<dynamic> Function()?>? catchKnownExceptions,
    Future<dynamic> Function()? catchUnknownExceptions}) async {
  try {
    return tryFunction?.call();
  } on Exception catch (e) {
    if (catchKnownExceptions == null) {
      // if
      rethrow;
    } else if (catchKnownExceptions.containsKey(e)) {
      Printer.print('tryCatchState', 'handling known exception: $e');
      catchKnownExceptions[e]?.call();
    } else {
      rethrow;
    }
  } catch (e, s) {
    Printer.printErrorAndStack('tryCatchState', 'catchUnknown', e, s);
    catchUnknownExceptions?.call();
  }
}

/// Synchronous try and catch handler to reduce boilerplate
///
/// Should be called in a State file
dynamic syncTryCatchHandler(
    {dynamic Function()? tryFunction,
    Map<Exception, dynamic Function()?>? catchKnownExceptions,
    dynamic Function()? catchUnknownExceptions}) {
  try {
    return tryFunction?.call();
  } on Exception catch (e) {
    if (catchKnownExceptions == null) {
      // if
      rethrow;
    } else if (catchKnownExceptions.containsKey(e)) {
      Printer.print('tryCatchState', 'handling known exception: $e');
      catchKnownExceptions[e]?.call();
    } else {
      rethrow;
    }
  } catch (e, s) {
    Printer.printErrorAndStack('tryCatchState', 'catchUnknown', e, s);
    catchUnknownExceptions?.call();
  }
}
