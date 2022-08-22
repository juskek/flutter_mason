import 'dart:convert';

import 'package:wordsmith_app/utils/app_version/app_version.dart';

enum AppVersionStatus {
  latest, // no update required, app version is either latest
  supported, // no update required, app version is not latest but it is not being deprecated yet
  deprecating, // update required by certain date, app version is being deprecated
  deprecated, // update required before use
}

class AppVersionControl {
  final AppVersion latest;
  final DeprecatingAppVersion deprecating;
  final AppVersion deprecated;

  AppVersionControl._({
    required this.latest,
    required this.deprecating,
    required this.deprecated,
  });

  factory AppVersionControl(String response) {
    dynamic responseJson = jsonDecode(response);

    return AppVersionControl._(
      latest: AppVersion(responseJson['latest']),
      deprecating: DeprecatingAppVersion(responseJson['deprecating']['version'],
          responseJson['deprecating']['date']),
      deprecated: AppVersion(responseJson['deprecated']),
    );
  }

  AppVersionStatus isAppUpdateRequired(AppVersion appVersion) {
    if (appVersion.intValue >= latest.intValue) {
      return AppVersionStatus.latest;
    } else if (appVersion.intValue > deprecating.intValue) {
      return AppVersionStatus.supported;
    } else if (appVersion.intValue <= deprecating.intValue) {
      return AppVersionStatus.deprecating;
    } else if (appVersion.intValue <= deprecated.intValue) {
      return AppVersionStatus.deprecated;
    } else {
      throw UnimplementedError('AppVersionControl: isAppUpdateRequired');
    }
  }
}
