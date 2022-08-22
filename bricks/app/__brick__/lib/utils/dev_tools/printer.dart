import 'package:flutter/material.dart';

abstract class Printer {
  static const bool printMapDoubleBuildCycle = true;

  // ignore: prefer_final_fields
  static Set<String> _categories = {
    // 'ALL',
    // 'REBUILT',
    // 'NOTIFYLISTENERS',
    // 'INIT',
    'AppState',
    // 'WordsmithsState',
    // 'RapLine',
  };
  static void alwaysPrint(String category, String message) {
    debugPrint(category + ': ' + message);
  }

  static void print(String category, String message) {
    if (printMapDoubleBuildCycle) {
      _categories.addAll({
        'CustomGoogleMap',
        'MapStack',
      });
    }
    if (_categories.contains(category) || _categories.contains('ALL')) {
      debugPrint(category + ': ' + message);
    }
  }

  static void printRebuilt(String category, String? subCategory) {
    if (_categories.contains(category) ||
        _categories.contains('ALL') ||
        _categories.contains('REBUILT')) {
      debugPrint(category +
          (subCategory == null ? '' : ': ' + subCategory) +
          ': REBUILT');
    }
  }

  static void printNotifyListeners(String category) {
    if (_categories.contains(category) ||
        _categories.contains('ALL') ||
        _categories.contains('NOTIFYLISTENERS')) {
      debugPrint(category + ': notifyListeners');
    }
  }

  static void printInit(String category, String? subCategory) {
    if (_categories.contains(category) ||
        _categories.contains('ALL') ||
        _categories.contains('INIT')) {
      debugPrint(category +
          (subCategory == null ? '' : ': ' + subCategory) +
          ': init');
    }
  }

  /// Always prints any exceptions thrown
  static void printErrorAndStack(
      String category, String subCategory, Object e, Object s) {
    debugPrint(
        category + ': ' + subCategory + ': error: $e' + '\nstackTrace: $s');
  }

  /// Always prints any exceptions thrown

  static void printErrorJsonAndStack(String category, String subCategory,
      Object e, Object responseJson, Object s) {
    debugPrint(category +
        ': ' +
        subCategory +
        ': error: $e' +
        '\njson: $responseJson' +
        '\nstackTrace: $s');
  }
}

void printWrapped(String text) {
  final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
  // ignore: avoid_print
  pattern.allMatches(text).forEach((match) => print(match.group(0)));
}
