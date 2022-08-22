import 'package:geolocator/geolocator.dart';
import 'package:honeycomb_app/utils/index.dart';
import 'package:honeycomb_app/state/dev/offline_api.dart';

enum DevMode {
  // working
  disabled, // all online

  offlineDemonstrator, // contains all the necessary flows for an offline pitch demo

}

/// This class allows the app to run without making calls to the
/// Honeycomb API.
///
/// Reflection was considered for setting the flags depending on the mode,
/// but the package is not stable, so we will use default bool and explicit
/// assignments instead of programmatic assignments.
class Developer extends ChangeNotifier {
  OfflineAPI offlineAPI = OfflineAPI();

  void init() {
    // disabled if all online
    // offlineDemonstrator if you want everything to be offline
    setMode(DevMode.offlineDemonstrator);
  }

  void setMode(DevMode devMode) {
    if (devMode == DevMode.disabled) {
      Printer.print('Developer',
          'setMode: disabled, running all APIs in default (online)');
      _offlineSessionEnabled = false;
    }

    if (devMode == DevMode.offlineDemonstrator) _offlineDemonstrator();

    if (devMode == DevMode.offlineAuth) _offlineAuth();
    if (devMode == DevMode.offlineSession) _offlineSession();
    if (devMode == DevMode.offlineFavouriteSites) _offlineFavouriteSites();
    if (devMode == DevMode.offlineOTP) _offlineOTP();
    if (devMode == DevMode.offlineProblemReporting) _offlineProblemReporting();
    if (devMode == DevMode.onboardingAddVehicle) {
      _onboardingAddVehicle();
    }
    if (devMode == DevMode.offlineGetVehicles) {
      _offlineGetVehicles();
    }

    if (devMode == DevMode.offlineSessionHistory) _offlineSessionHistory();
    if (devMode == DevMode.offlineEditVehicles) _offlineEditVehicles();
  }

  void _offlineDemonstrator() {
    setUserPosition(51.51630, -0.13000, 9993); // Tottenham Court Road
    setMode(DevMode.offlineAuth);
    setMode(DevMode.offlineFavouriteSites);

    setMode(DevMode.offlineSession);

    setMode(DevMode.offlineProblemReporting);
  }

  /// This mode allows user to get through PhoneAuthenScreens offline.
  void _offlineOTP() {
    // gets to authentication screen
    offlineAPI.setResponseCase('getUser', responseCase: 'unauthenticated');

    // gets past phone number entry screen
    offlineAPI.setResponseCase('signUpWithCustomAuthFlow',
        responseCase: 'success');
    offlineAPI.setResponseCase('signInWithCustomAuthFlow',
        responseCase: 'success');
    // gets past OTP screen
    offlineAPI.setResponseCase('respondToAuthChallenge',
        responseCase: 'success');
  }

  /// This mode allows user to get past AuthFlow offline.
  void _offlineAuth() {
    // auth flow
    offlineAPI.setResponseCase('getUser', responseCase: 'success');
    offlineAPI.setResponseCase('checkAuthorisation',
        responseCase: 'authorised');

    // onboarding flow
    offlineAPI.setResponseCase('isUserOnboarded',
        responseCase: 'previouslyOnboarded');

    // second init flow
    offlineAPI.setResponseCase('getUserVehicles',
        responseCase: 'userHasVehicles');
    offlineAPI.setResponseCase('getSessionStatus', responseCase: 'none');

    offlineAPI.setResponseCase('getAllSites', responseCase: 'success');
    offlineAPI.setResponseCase('getSiteVacancy', responseCase: 'success?');
    offlineAPI.setResponseCase('getFavouriteSites',
        responseCase: 'successFavAndQuick');
    offlineAPI.setResponseCase('getPrivateSiteAccessStatus',
        responseCase: 'pending');
    offlineAPI.setResponseCase('requestPrivateSiteAccess',
        responseCase: 'success');
    offlineAPI.setResponseCase('hidePrivateSiteAccess',
        responseCase: 'success');

    /// user is in the home screen from this point on,
    /// but everything else needs to be set to offline since no auth tokens
    /// were obtained, hence making signed requests is impossible

    setMode(DevMode.offlineFavouriteSites);

    setMode(DevMode.offlineSession);

    setMode(DevMode.offlineSessionHistory);

    setMode(DevMode.offlineProblemReporting);

    setMode(DevMode.offlineEditVehicles);
  }

  void _offlineEditVehicles() {
    offlineAPI.setResponseCase('getTrustedEscooters', responseCase: 'success');
    offlineAPI.setResponseCase('setDefaultVehicle', responseCase: 'success');
    offlineAPI.setResponseCase('addVehicle', responseCase: 'success');
    offlineAPI.setResponseCase('removeVehicle', responseCase: 'success');
  }

  void _offlineSessionHistory() {
    offlineAPI.setResponseCase('getSessionHistory', responseCase: 'success');
    offlineAPI.setResponseCase('getRecentSites', responseCase: 'success');
  }

  void _offlineProblemReporting() {
    offlineAPI.setResponseCase('reportGeneralProblem', responseCase: 'success');
  }

  void _offlineFavouriteSites() {
    offlineAPI.setResponseCase('addFavouriteSite', responseCase: 'success');
    offlineAPI.setResponseCase('removeFavouriteSite', responseCase: 'success');
    offlineAPI.setResponseCase('addQuickSite', responseCase: 'success');
    offlineAPI.setResponseCase('removeQuickSite', responseCase: 'success');
  }

  /// Allows getSessionStatus to change depending on which part of the app the user is at
  bool _offlineSessionEnabled = false;
  bool get offlineSessionEnabled => _offlineSessionEnabled;

  void _offlineSession() {
    offlineAPI.setResponseCase('startSessionUnlockPod',
        responseCase: 'success');
    offlineAPI.setResponseCase('startSessionIsPodLocked',
        responseCase: 'locked');
    offlineAPI.setResponseCase('reportProblem', responseCase: 'success');
    _offlineSessionEnabled = true;
    // offlineAPI.setResponseCase('getSessionStatus', responseCase: 'loading');
    offlineAPI.setResponseCase('updateSession', responseCase: 'success');
    offlineAPI.setResponseCase('endSessionUnlockPod', responseCase: 'success');
    offlineAPI.setResponseCase('endSessionIsPodLocked', responseCase: 'locked');
  }

  void _onboardingAddVehicle() {
    // auth flow
    offlineAPI.setResponseCase('getUser', responseCase: 'success');
    offlineAPI.setResponseCase('checkAuthorisation',
        responseCase: 'authorised');

    // onboarding flow
    offlineAPI.setResponseCase('isUserOnboarded', responseCase: 'newUser');
    // getUserDetailsFromUserPool: void
    // Calls getUser, which is on success
    // minimumUserDetailsObtained: true
    // Tries to get stuff from getUser, so should be good
    offlineAPI.setResponseCase('onboardUser', responseCase: 'success');
  }

  void _offlineGetVehicles() {
    offlineAPI.setResponseCase('getTrustedEscooters', responseCase: 'success');
  }

  //! user location
  bool _overrideUserPosition = false;
  bool get overrideUserPosition => _overrideUserPosition;
  Position? _userPosition;
  Position? get userPosition => _userPosition;
  int? _siteId;
  int? get siteId => _siteId;

  /// Call in init to override user position
  ///
  /// siteId must be provided so that the site where a session can be started is close to the user
  void setUserPosition(double lat, double long, int siteId) {
    _overrideUserPosition = true;
    _userPosition = Position(
        latitude: lat,
        longitude: long,
        timestamp: DateTime.now(),
        accuracy: 0,
        altitude: 0,
        heading: 0,
        speed: 0,
        speedAccuracy: 0);
    _siteId = siteId;
  }

  bool _overrideLocationPermission = false;
  bool get overrideLocationPermission => _overrideLocationPermission;
  LocationPermission? _locationPermission;
  LocationPermission? get locationPermission => _locationPermission;

  /// Call in init to override location permissions
  void setLocationPermissions(LocationPermission permission) {
    _overrideLocationPermission = true;
    _locationPermission = permission;
  }
}
