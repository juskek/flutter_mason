import 'package:honeycomb_app/utils/index.dart';

class APIKeys {
  // GOOGLE MAPS
  static String googleMapsAPIKeyiOS =
      const String.fromEnvironment('GOOGLE_MAPS_API_KEY_IOS');
  static String googleMapsAPIKeyAndroid =
      const String.fromEnvironment('GOOGLE_MAPS_API_KEY_ANDROID');
  // STRIPE
  static String stripeAPIKey =
      const String.fromEnvironment('STRIPE_PUBLISHABLE_KEY');
  // AWS
  static String awsRegion = const String.fromEnvironment('AWS_REGION');
  static String redirectUri = 'https://www.honeycomb-network.co.uk';
  // static String redirectUri = 'https://kek.technology';
  // AUTHENTICATION
  static String userPoolID = const String.fromEnvironment('USER_POOL_ID');
  static String userPoolAppClientID =
      const String.fromEnvironment('USER_POOL_APP_CLIENT_ID');
  static String userPoolAppClientSecret =
      const String.fromEnvironment('USER_POOL_APP_CLIENT_SECRET');
  static String userPoolAppClientIDCustom = const String.fromEnvironment(
      'USER_POOL_APP_CLIENT_ID_CUSTOM'); // for custom auth flow, no secret
  // static String fbAuthClientID =
  //     const String.fromEnvironment('AUTH_FB_CLIENT_ID');
  // static String fbAuthClientSecret =
  //     const String.fromEnvironment('AUTH_FB_CLIENT_SECRET');

  // AUTHORISATION
  static String identityPoolID =
      const String.fromEnvironment('IDENTITY_POOL_ID');

  static void printKeys() {
    Printer.print('DARTENV', 'googleMapsAPIKeyiOS: $googleMapsAPIKeyiOS');
    Printer.print(
        'DARTENV', 'googleMapsAPIKeyAndroid: $googleMapsAPIKeyAndroid');
    Printer.print('DARTENV', 'stripeAPIKey: $stripeAPIKey');
    Printer.print('DARTENV', 'fbAuthClientID: $userPoolAppClientID');
    Printer.print('DARTENV', 'fbAuthClientSecret: $userPoolAppClientSecret');
  }
}
