import 'package:honeycomb_app/utils/index.dart';
import 'package:honeycomb_app/state/dev/responses/get_trusted_escooters.dart';

class OfflineAPI {
  final Map<String, OfflineAPIRequest> _api = {
    // auth flow requests
    'getUser': OfflineAPIRequest('online', responses: {
      'success':
          // '{"UserAttributes": "placeholderSoThatNonNullTriggersSuccessfulGetUserRequest"}',
          r'{"UserAttributes":[{"Name":"sub","Value":"c33c6739-f2dc-44c3-9a05-b036f3155963"},{"Name":"identities","Value":"[{\"userId\":\"10222020069432144\",\"providerName\":\"Facebook\",\"providerType\":\"Facebook\",\"issuer\":null,\"primary\":true,\"dateCreated\":1652435534351}]"},{"Name":"email_verified","Value":"false"},{"Name":"name","Value":"Justin Kek"},{"Name":"email","Value":"justinkekjq@gmail.com"}],"Username":"facebook_10222020069432144"}',
      'unauthenticated': '{"__type":"NotAuthorizedException"}',
    }),

    'checkAuthorisation': OfflineAPIRequest('online', responses: {
      'authorised': '"authorised"',
      'unauthorised': '"unauthorised"',
    }),
    'getSupportedAppVersions': OfflineAPIRequest('online', responses: {
      'supported':
          '{"latest":"1.0.0+0","deprecating":{"version":"0.7.0+0","date":"2022-08-12 23:59:00.000"},"deprecated":"0.5.0+0"}',
    }),

    // onboarding flow requests
    'isUserOnboarded': OfflineAPIRequest('online', responses: {
      'newUser': '"success": false,',
      'previouslyOnboarded':
          '{"user_id": 123456789,"first_name": "Tim","last_name": "Lidr","email": "tim.lidr@stonks.man","phone": "+441234123456","kiosk_user_id": 12345678,"passcode": 123456,"rights": "admin","app_settings": null,"vehicles": []}',
    }),
    'onboardUser': OfflineAPIRequest('online', responses: {
      'success':
          '{"user_id": 43, "first_name": "Cameron", "last_name": "Brown", "email": "cameron@honeycomb-network.co.uk", "phone": 0, "kiosk_user_id": 61559986, "passcode": 6175, "rights": null}',
    }),

    // second init flow requests
    'getUserVehicles': OfflineAPIRequest('online', responses: {
      'userHasVehicles':
          '{"vehicles": [{"vehicle_id": 8881, "model_id": 3, "default_vehicle": false, "model_thumbnail": null, "brand": "Pure", "model": "Air Gen 2", "connector": "RCA_8mm", "dark_logo": "https://honeycomb-app-public.s3.eu-west-2.amazonaws.com/pure_dark.png", "light_logo": "https://honeycomb-app-public.s3.eu-west-2.amazonaws.com/pure_light.png"}, {"vehicle_id": 8882, "model_id": 4, "default_vehicle": true, "model_thumbnail": null, "brand": "Xiaomi", "model": "Mi 1S", "connector": "XLR", "dark_logo": "https://honeycomb-app-public.s3.eu-west-2.amazonaws.com/xiaomi_dark.png", "light_logo": "https://honeycomb-app-public.s3.eu-west-2.amazonaws.com/xiaomi_light.png"}]}',
      'userNoVehicles': '{"message": "User has no vehicles"}',
    }),
    'getSessionStatus': OfflineAPIRequest('online', responses: {
      'none': '{"session_status": null}',
      'loading9991':
          '{"session_status": "loading", "charge_mode": "eco", "pod_id": 1, "start_time_utc":"2022-04-29 23:38:42.123000", "return_time_utc": "2022-04-29 23:38:42.123000", "current_soc": null, "pod_position": 1, "site": [{"site_id": 9991, "address": "Imperial College London", "site_thumbnail": null}], "vehicle": [{"vehicle_id": 8881, "model_id": 14, "brand": "Ninebot Segway", "model": "Max G30", "dark_logo": "https://honeycomb-app-public.s3.eu-west-2.amazonaws.com/ninebot_segway_dark.png", "light_logo": "https://honeycomb-app-public.s3.eu-west-2.amazonaws.com/ninebot_segway_light.png"}]}',
      'booting9991':
          '{"session_status": "booting", "charge_mode": "eco", "pod_id": 1, "start_time_utc":"2022-04-29 23:38:42.123000", "return_time_utc": "2022-04-29 23:38:42.123000", "current_soc": null, "pod_position": 1, "site": [{"site_id": 9991, "address": "Imperial College London", "site_thumbnail": null}], "vehicle": [{"vehicle_id": 8881, "model_id": 14, "brand": "Ninebot Segway", "model": "Max G30", "dark_logo": "https://honeycomb-app-public.s3.eu-west-2.amazonaws.com/ninebot_segway_dark.png", "light_logo": "https://honeycomb-app-public.s3.eu-west-2.amazonaws.com/ninebot_segway_light.png"}]}',
      'charging9991':
          '{"session_status": "charging", "error":123, "charge_mode": "eco", "pod_id": 1,"start_time_utc":"2022-04-29 23:38:42.123000", "return_time_utc": "2022-04-29 23:38:42.123000", "current_soc": 77, "pod_position": 1, "site": [{"site_id": 9991, "address": "Imperial College London", "site_thumbnail": null}], "vehicle": [{"vehicle_id": 8881, "model_id": 14, "brand": "Ninebot Segway", "model": "Max G30", "dark_logo": "https://honeycomb-app-public.s3.eu-west-2.amazonaws.com/ninebot_segway_dark.png", "light_logo": "https://honeycomb-app-public.s3.eu-west-2.amazonaws.com/ninebot_segway_light.png"}]}',
      'unloading9991':
          '{"session_status": "unloading", "charge_mode": "eco", "pod_id": 1,"start_time_utc":"2022-04-29 23:38:42.123000",  "return_time_utc": "2022-04-29 23:38:42.123000", "current_soc": null, "pod_position": 1, "site": [{"site_id": 9991, "address": "Imperial College London", "site_thumbnail": null}], "vehicle": [{"vehicle_id": 8881, "model_id": 14, "brand": "Ninebot Segway", "model": "Max G30", "dark_logo": "https://honeycomb-app-public.s3.eu-west-2.amazonaws.com/ninebot_segway_dark.png", "light_logo": "https://honeycomb-app-public.s3.eu-west-2.amazonaws.com/ninebot_segway_light.png"}]}',
      'loading9993':
          '{"session_status": "loading", "charge_mode": "eco", "pod_id": 1, "start_time_utc":"2022-04-29 23:38:42.123000", "return_time_utc": "2022-04-29 23:38:42.123000", "current_soc": null, "pod_position": 1, "site": [{"site_id": 9993, "address": "Tottenham Court Road", "site_thumbnail": null}], "vehicle": [{"vehicle_id": 8881, "model_id": 14, "brand": "Ninebot Segway", "model": "Max G30", "dark_logo": "https://honeycomb-app-public.s3.eu-west-2.amazonaws.com/ninebot_segway_dark.png", "light_logo": "https://honeycomb-app-public.s3.eu-west-2.amazonaws.com/ninebot_segway_light.png"}]}',
      'booting9993':
          '{"session_status": "booting", "charge_mode": "eco", "pod_id": 1, "start_time_utc":"2022-04-29 23:38:42.123000", "return_time_utc": "2022-04-29 23:38:42.123000", "current_soc": null, "pod_position": 1, "site": [{"site_id": 9993, "address": "Tottenham Court Road", "site_thumbnail": null}], "vehicle": [{"vehicle_id": 8881, "model_id": 14, "brand": "Ninebot Segway", "model": "Max G30", "dark_logo": "https://honeycomb-app-public.s3.eu-west-2.amazonaws.com/ninebot_segway_dark.png", "light_logo": "https://honeycomb-app-public.s3.eu-west-2.amazonaws.com/ninebot_segway_light.png"}]}',
      'charging9993':
          '{"session_status": "charging", "error":123, "charge_mode": "eco", "pod_id": 1,"start_time_utc":"2022-04-29 23:38:42.123000", "return_time_utc": "2022-04-29 23:38:42.123000", "current_soc": 77, "pod_position": 1, "site": [{"site_id": 9993, "address": "Tottenham Court Road", "site_thumbnail": null}], "vehicle": [{"vehicle_id": 8881, "model_id": 14, "brand": "Ninebot Segway", "model": "Max G30", "dark_logo": "https://honeycomb-app-public.s3.eu-west-2.amazonaws.com/ninebot_segway_dark.png", "light_logo": "https://honeycomb-app-public.s3.eu-west-2.amazonaws.com/ninebot_segway_light.png"}]}',
      'unloading9993':
          '{"session_status": "unloading", "charge_mode": "eco", "pod_id": 1,"start_time_utc":"2022-04-29 23:38:42.123000",  "return_time_utc": "2022-04-29 23:38:42.123000", "current_soc": null, "pod_position": 1, "site": [{"site_id": 9993, "address": "Tottenham Court Road", "site_thumbnail": null}], "vehicle": [{"vehicle_id": 8881, "model_id": 14, "brand": "Ninebot Segway", "model": "Max G30", "dark_logo": "https://honeycomb-app-public.s3.eu-west-2.amazonaws.com/ninebot_segway_dark.png", "light_logo": "https://honeycomb-app-public.s3.eu-west-2.amazonaws.com/ninebot_segway_light.png"}]}',
    }),

    'getAllSites': OfflineAPIRequest('online', responses: {
      'success':
          '{"sites": [{"site_id": 9991, "private_site": false, "lat": "51.49880", "long": "-0.17490", "address": "Imperial College London", "access_conditions": null, "site_thumbnail": null}, {"site_id": 9992, "private_site": true, "lat": "51.51090", "long": "-0.13160", "address": "Chinatown", "access_conditions": "1. You must be Chinese to access this site", "site_thumbnail": null}, {"site_id": 9993, "private_site": false, "lat": "51.51630", "long": "-0.13000", "address": "Tottenham Court Road", "access_conditions": null, "site_thumbnail": null}, {"site_id": 9994, "private_site": false, "lat": "51.51170", "long": "-0.12400", "address": "Covent Garden", "access_conditions": null, "site_thumbnail": null}]}',
    }),

    'getSiteVacancy': OfflineAPIRequest('online', responses: {
      // format: success?siteId
      'success?9991':
          '{"total pods": 1, "available pods": 1, "vacancy percentage": 100, "status": "online", "pods": [{"pod_id": 1, "occupied": false}]}',
      'success?9992':
          '{"total pods": 3, "available pods": 2, "vacancy percentage": 66, "status": "online", "pods": [{"pod_id": 1, "occupied": false}]}',
      'success?9993':
          '{"total pods": 5, "available pods": 3, "vacancy percentage": 60, "status": "online", "pods": [{"pod_id": 1, "occupied": false}]}',
      'success?9994':
          '{"total pods": 7, "available pods": 4, "vacancy percentage": 57, "status": "offline", "pods": [{"pod_id": 1, "occupied": false}]}',
    }),

    // TODO: refactor backend to only return site_id
    'getFavouriteSites': OfflineAPIRequest('online', responses: {
      'successNone': '{"favourites": [], "quick": []}',
      // 'successFavOnly': ,
      // 'successQuickOnly': ,
      'successFavAndQuick':
          '{"favourites": [{"site_id": 9994, "private_site": false, "lat": "51.51170", "long": "-0.12400", "address": "Covent Garden"}, {"site_id": 9992, "private_site": true, "lat": "51.51090", "long": "-0.13160", "address": "Chinatown"}], "quick": [{"site_id": 9994, "private_site": false, "lat": "51.51170", "long": "-0.12400", "address": "Covent Garden"}]}',
    }),
    // authentication requests
    'signUpWithCustomAuthFlow': OfflineAPIRequest('online', responses: {
      'success': 'UsernameExistsException',
    }),
    'signInWithCustomAuthFlow': OfflineAPIRequest('online', responses: {
      'success': '{"Session":"placeholdertoken"}',
    }),
    'respondToAuthChallenge': OfflineAPIRequest('online', responses: {
      'success':
          '{"AuthenticationResult":{"AccessToken":"placeholder","IdToken":"placeholder","RefreshToken":"placeholder"}}',
    }),

    'confirmPhoneSignIn': OfflineAPIRequest('correct', responses: {
      'correct': 'true',
      'wrong': 'true',
      'timeout': 'true',
    }),

    // authorisation requests

    // problem requests
    'reportProblem': OfflineAPIRequest('online', responses: {
      'success': 'true',
    }),

    // vehicle requests
    'getTrustedEscooters': OfflineAPIRequest('online', responses: {
      'success': getTrustedEscootersResponse,
    }),

    'addVehicle': OfflineAPIRequest('online', responses: {
      'success': '{"success": true, "vehicle_id": 85}',
    }),

    'removeVehicle': OfflineAPIRequest('online', responses: {
      'success': '{"success": true}',
    }),
    'setDefaultVehicle': OfflineAPIRequest('online', responses: {
      'success': '{"success": true}',
    }),

    // session requests
    'startSessionUnlockPod': OfflineAPIRequest('online', responses: {
      'success': '{"pod_id":1,"pod_position": 1}',
    }),
    'startSessionIsPodLocked': OfflineAPIRequest('online', responses: {
      'locked': '{"locked": true}',
      'unlocked': '{"locked": false}',
    }),
    'endSessionUnlockPod': OfflineAPIRequest('online', responses: {
      'success': '{"success": true}',
    }),
    'endSessionIsPodLocked': OfflineAPIRequest('online', responses: {
      'locked': '{"locked": true}',
      'unlocked': '{"locked": false}',
    }),
    'updateSession': OfflineAPIRequest('online', responses: {
      'success': '{"success": true}',
    }),
    'getSessionHistory': OfflineAPIRequest('online', responses: {
      'success':
          '{"sessions": [{"usage_id": 2, "pod_id": 2, "vehicle_id": 1, "start_time_utc": "2022-04-03 18:38:42.123000", "duration": 245423, "energy_used_mwh": 34234, "user_id": 1, "end_time_utc": "2022-04-11 22:47:56.969203", "site_id": 2, "address": "Chinatown"}, {"usage_id": 3, "pod_id": 2, "vehicle_id": 1, "start_time_utc": "2022-04-03 18:38:42.123000", "duration": 23412, "energy_used_mwh": 2341, "user_id": 1, "end_time_utc": "2022-05-12 22:47:56.969203", "site_id": 2, "address": "Chinatown"}]}',
    }),

    // user requests
    'updateUserPersonalDetails': OfflineAPIRequest('online', responses: {
      'success': '{"success": true}',
    }),
    //! site requests
    //! favourite site requests
    'getRecentSites': OfflineAPIRequest('online', responses: {
      'none': '',
      'success':
          '{"sites": [{"site_id": 9992, "last_used_utc": "2022-05-16 22:47:56.969203", "private_site": true, "lat": "51.51090", "long": "-0.13160", "address": "Chinatown"}, {"site_id": 9993, "last_used_utc": "2022-05-12 22:48:56.969203", "private_site": false, "lat": "51.51630", "long": "-0.13000", "address": "Tottenham Court Road"}, {"site_id": 9994, "last_used_utc": "2022-05-12 22:47:56.969203", "private_site": false, "lat": "51.51170", "long": "-0.12400", "address": "Covent Garden"}]}',
    }),

    'addFavouriteSite': OfflineAPIRequest('online', responses: {
      'success': '{"success": true}',
    }),
    'removeFavouriteSite': OfflineAPIRequest('online', responses: {
      'success': '{"success": true}',
    }),
    'addQuickSite': OfflineAPIRequest('online', responses: {
      'success': '{"success": true}',
      'alreadyAdded':
          '{"success": false, "error": "Site already the quick access site"}',
    }),
    'removeQuickSite': OfflineAPIRequest('online', responses: {
      'success': '{"success": true}',
      'alreadyRemoved':
          '{"success": false, "error": "Site already removed from quick access"}',
    }),

    //! private site requests
    'getPrivateSiteAccessStatus': OfflineAPIRequest('online', responses: {
      'none': '{"approved": [], "denied": [], "pending": []}',
      'approved':
          '{"approved": [{"site_id": 9992, "expiration_time_utc": "2022-04-29 23:38:42.123000", "address": "Chinatown", "site_thumbnail": null, "shown": true}], "denied": [], "pending": [], "expired":[]}',
      'pending':
          '{"approved": [], "denied": [], "pending": [{"site_id": 9992, "request_time_utc": "2022-06-02 14:19:19.234631", "address": "Chinatown", "site_thumbnail": null, "shown": true}], "expired":[]}',
      'denied':
          '{"approved": [], "denied": [{"site_id": 9992, "reason": "Too small", "shown": true}], "pending": [], "expired":[]}',
      'expired':
          '{"approved": [], "denied": [], "pending": [], "expired":[{"site_id": 9992, "reason": "Too small", "shown": true}]}',
      'all':
          '{"approved": [{"site_id": 9992, "expiration_time_utc": "2022-04-29 23:38:42.123000", "address": "Chinatown", "site_thumbnail": null, "shown": true}], "denied": [{"site_id": 9992, "reason": "Too small", "shown": true}], "pending": [{"site_id": 9992, "request_time_utc": "2022-06-02 14:19:19.234631", "address": "Chinatown", "site_thumbnail": null, "shown": true}], "expired":[]}',
      'hidden':
          '{"approved": [{"site_id": 9992, "expiration_time_utc": "2022-04-29 23:38:42.123000", "address": "Chinatown", "site_thumbnail": null, "shown": false}], "denied": [], "pending": []}',
    }),
    'requestPrivateSiteAccess': OfflineAPIRequest('online', responses: {
      'success': '{"message": "Approval results pending"}',
    }),
    'hidePrivateSiteAccess': OfflineAPIRequest('online', responses: {
      'success': '{"message": "Request complete."}',
    }),

    //! problem requests
    'reportGeneralProblem': OfflineAPIRequest('online', responses: {
      'success': '{"success": true}',
      'failed': '{"success": false}',
    }),
  };

  /// Checks whether the API has been set to offline (!= 'off')
  bool isOffline(String apiName) {
    if (_api.containsKey(apiName)) {
      if (_api[apiName]!.selected != 'online') {
        Printer.print('OfflineAPI', '$apiName: is offline');
        return true;
      }
      Printer.print('OfflineAPI', '$apiName: is online');
      return false;
    } else {
      Printer.print('OfflineAPI', '_api does not contain $apiName');
      throw 'OfflineAPI: _api does not contain $apiName';
    }
  }

  /// Sets response for an offline API endpoint
  ///
  /// Is 'off' by default. If the response case accepts args, append ?
  void setResponseCase(String apiName, {String responseCase = 'online'}) {
    if (_api.containsKey(apiName)) {
      // check if responseCase accepts args (responseCase?),
      // if so check for matching wildcards responseCase?*
      if (responseCase.contains('?')) {
        // get set of keys from _api and see whether there are response cases
        // which accepts args
        for (var _responseCase in _api[apiName]!.responses.keys) {
          if (_responseCase.contains('?')) {
            if (_responseCase.split('?')[0] ==
                responseCase.substring(0, responseCase.length - 1)) {
              // see if it matches the set responseCase (without ?)
              _api[apiName]!.selected = responseCase;
              Printer.print('OfflineAPI',
                  'setResponseCase: $apiName: set to ${_api[apiName]!.selected}');
              return;
            }
          }
        }
        // at this point, no arg accepting _responseCase matched the set responseCase
        throw 'OfflineAPI: _api contains $apiName, but $apiName does not contain arg accepting $responseCase response';
      }

      if (_api[apiName]!.responses.containsKey(responseCase)) {
        _api[apiName]!.selected = responseCase;
        Printer.print('OfflineAPI',
            'setResponseCase: $apiName: set to ${_api[apiName]!.selected}');
        return;
      } else {
        throw 'OfflineAPI: _api contains $apiName, but $apiName does not contain $responseCase response';
      }
    } else {
      throw 'OfflineAPI: _api does not contain $apiName';
    }
  }

  String getResponse(String apiName, {dynamic arg}) {
    if (_api.containsKey(apiName)) {
      String responseCase = _api[apiName]!.selected;
      Map<String, String> responses = _api[apiName]!.responses;

      // check if args are required for the responseCase which was set
      if (responseCase.contains('?')) {
        if (arg == null) {
          throw 'OfflineAPI: $apiName expects an arg';
        } else {
          responseCase = responseCase + arg.toString();
        }
      } else {
        // no args required, responseCase is left as is
      }

      if (responses.containsKey(responseCase)) {
        Printer.print('OfflineAPI', 'getResponse: $apiName: $responseCase');
        return responses[responseCase]!;
      } else {
        throw 'OfflineAPI: $apiName does not contain responseCase $responseCase';
      }
    } else {
      throw 'OfflineAPI: _api does not contain $apiName';
    }
  }
}

/// Class to
class OfflineAPIRequest {
  OfflineAPIRequest._(
    this.selected,
    this.responses,
  );

  factory OfflineAPIRequest(String selected, {Map<String, String>? responses}) {
    if (responses == null) {
      responses ??= const {
        'online': 'OfflineAPIRequest: this api is querying Honeycomb API'
      };
    } else {
      // warn user if adding manual key which conflicts with default keys
      if (responses.containsKey('online')) {
        throw 'OfflineAPIRequest: responses should not contain default online key, please change the name of the response case';
      } else if (responses.containsKey('ISE')) {
        throw 'OfflineAPIRequest: responses should not contain default ISE key, please change the name of the response case';
      } else {
        // add online key
        responses['online'] =
            'OfflineAPIRequest: this api is querying Honeycomb API';
        // add InternalServerError key
        responses['ISE'] =
            'OfflineAPIRequest: this api is querying Honeycomb API';
      }
    }
    return OfflineAPIRequest._(selected, responses);
  }
// responses['online'] = 'OfflineAPIRequest: no response selected';
  /// Determines which response to return
  String selected = 'online';

  /// Stores different responses for a single API request
  Map<String, String> responses;
}
