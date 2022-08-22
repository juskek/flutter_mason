import 'app.dart';
import 'flavors.dart';
import 'package:{{app_name}}/utils/index.dart';

void main() {
   WidgetsFlutterBinding
      .ensureInitialized(); // required for package_info_plus, flutter_inappwebview

  // required for flutter_inappwebview
  if (io.Platform.isAndroid) {
    await AndroidInAppWebViewController.setWebContentsDebuggingEnabled(true);
  }
  F.appFlavor = Flavor.FLAV_DEV;
  // runApp(App());
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => Developer()),
      // Auth
      ChangeNotifierProvider(create: (context) => AuthenticationState()),
      ChangeNotifierProvider(create: (context) => AuthorisationState()),
      ChangeNotifierProvider(create: (context) => SecureStorageState()),

      // Misc
      ChangeNotifierProvider(create: (context) => TutorialState()),
      ChangeNotifierProvider(create: (context) => ThemeState()),
      ChangeNotifierProvider(create: (context) => NativeBrowser()),

      // Main
      ChangeNotifierProvider(create: (context) => AppState()),
      ChangeNotifierProvider(create: (context) => UserState()),
    ],
    child: const App(),
  ));
}
