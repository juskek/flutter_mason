import 'package:honeycomb_app/screens/account/nested/session_history/session_log_screen.dart';
import 'package:honeycomb_app/utils/index.dart';
import 'package:honeycomb_app/screens/account/account_screen.dart';
import 'package:honeycomb_app/screens/account/nested/hive_pass/hive_pass_screen.dart';
import 'package:honeycomb_app/screens/account/nested/personal_details_screen.dart';
import 'package:honeycomb_app/screens/account/nested/private_sites/add/add_private_sites_screen.dart';
import 'package:honeycomb_app/screens/account/nested/private_sites/existing/existing_private_sites_screen.dart';
import 'package:honeycomb_app/screens/account/nested/session_history/session_history_screen.dart';
import 'package:honeycomb_app/screens/auth/auth_flow_screen.dart';
import 'package:honeycomb_app/screens/help/help_and_safety_screen.dart';
import 'package:honeycomb_app/screens/help/report_general_problem_screen.dart';

import 'package:honeycomb_app/screens/home/home_screen.dart';
import 'package:honeycomb_app/screens/auth/authorised_test_screen.dart';
import 'package:honeycomb_app/screens/auth/authentication/authentication_screen.dart';
import 'package:honeycomb_app/screens/auth/onboarding/onboarding_flow_screen.dart';
import 'package:honeycomb_app/screens/auth/onboarding/onboarding_screen.dart';
import 'package:honeycomb_app/screens/auth/authentication/phone/phone_authen_otp_screen.dart';
import 'package:honeycomb_app/screens/session/reportproblem/report_problem_screen.dart';
import 'package:honeycomb_app/screens/settings/nested/site_settings_screen.dart';
import 'package:honeycomb_app/screens/settings/nested/theme_settings_screen.dart';
import 'package:honeycomb_app/screens/vehicles/add/add_vehicle_screen.dart';
// import 'package:honeycomb_app/screens/scooter/scooter_add_screen_old.dart';
import 'package:honeycomb_app/screens/auth/authentication/phone/phone_authen_screen.dart';
import 'package:honeycomb_app/screens/vehicles/add/add_vehicle_type_screen.dart';
import 'package:honeycomb_app/screens/vehicles/existing/existing_vehicles_screen.dart';
import 'package:honeycomb_app/screens/session/loading/load_vehicle_screen.dart';
import 'package:honeycomb_app/screens/session/ongoing/screen/session_status_screen.dart';
import 'package:honeycomb_app/screens/session/unloading/unload_vehicle_screen.dart';
import 'package:honeycomb_app/screens/settings/app_settings_screen.dart';

import '../screens/home/home_screen.dart';

var customRoutes = <String, WidgetBuilder>{
  HomeScreen.routeName: (context) => const HomeScreen(),
  AuthenticationScreen.routeName: (context) => const AuthenticationScreen(),

  PhoneAuthenScreen.routeName: (context) => const PhoneAuthenScreen(),
  PhoneAuthenOTPScreen.routeName: (context) =>
      const PhoneAuthenOTPScreen(), // has args
  OnboardingFlowScreen.routeName: (context) => const OnboardingFlowScreen(),
  OnboardingScreen.routeName: (context) => const OnboardingScreen(),
  AddVehicleTypeScreen.routeName: (context) => const AddVehicleTypeScreen(),
  AddVehicleScreen.routeName: (context) => const AddVehicleScreen(),
  ExistingVehiclesScreen.routeName: (context) => const ExistingVehiclesScreen(),

  LoadVehicleScreen.routeName: (context) => const LoadVehicleScreen(),
  SessionStatusScreen.routeName: (context) => const SessionStatusScreen(),
  UnloadVehicleScreen.routeName: (context) => const UnloadVehicleScreen(),
  HelpAndSafetyScreen.routeName: (context) => const HelpAndSafetyScreen(),

  ReportProblemScreen.routeName: (context) => const ReportProblemScreen(),

  // account routes
  AccountScreen.routeName: (context) => const AccountScreen(),
  PersonalDetailsScreen.routeName: (context) => const PersonalDetailsScreen(),
  AddPrivateSitesScreen.routeName: (context) => const AddPrivateSitesScreen(),
  ExistingPrivateSitesScreen.routeName: (context) =>
      const ExistingPrivateSitesScreen(),
  HivePassScreen.routeName: (context) => const HivePassScreen(),
  SessionHistoryScreen.routeName: (context) => const SessionHistoryScreen(),
  SessionLogScreen.routeName: (context) => const SessionLogScreen(),

  // help and safety routes
  ReportGeneralProblemScreen.routeName: (context) =>
      const ReportGeneralProblemScreen(),

  // settings route
  AppSettingsScreen.routeName: (context) => const AppSettingsScreen(),
  ThemeSettingsScreen.routeName: (context) => const ThemeSettingsScreen(),
  SiteSettingsScreen.routeName: (context) => const SiteSettingsScreen(),
  AuthorisedTestScreen.routeName: (context) => const AuthorisedTestScreen(),
  AuthFlowScreen.routeName: (context) => const AuthFlowScreen(),
};
