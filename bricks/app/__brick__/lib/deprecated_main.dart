// import 'package:{{app_name}}/utils/index.dart';

// void main() async {
//   WidgetsFlutterBinding
//       .ensureInitialized(); // required for package_info_plus, flutter_inappwebview

//   // required for flutter_inappwebview
//   if (io.Platform.isAndroid) {
//     await AndroidInAppWebViewController.setWebContentsDebuggingEnabled(true);
//   }

//   runApp(MultiProvider(
//     providers: [
//       ChangeNotifierProvider(create: (context) => Developer()),
//       // Auth
//       ChangeNotifierProvider(create: (context) => AuthenticationState()),
//       ChangeNotifierProvider(create: (context) => AuthorisationState()),
//       ChangeNotifierProvider(create: (context) => SecureStorageState()),

//       // Misc
//       ChangeNotifierProvider(create: (context) => TutorialState()),
//       ChangeNotifierProvider(create: (context) => ThemeState()),
//       ChangeNotifierProvider(create: (context) => NativeBrowser()),

//       // Main
//       ChangeNotifierProvider(create: (context) => AppState()),
//       ChangeNotifierProvider(create: (context) => UserState()),
//     ],
//     child: const MainApp(),
//   ));
// }

// class MainApp extends StatelessWidget {
//   const MainApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     // disallow other orientations
//     SystemChrome.setPreferredOrientations([
//       // need to add UIInterfaceOrientationPortrait to Info.plist
//       // see https://github.com/flutter/flutter/issues/27235#issuecomment-508995063
//       DeviceOrientation.portraitUp,
//     ]);

//     // Check for API keys
//     APIKeys.printKeys();

//     Injector.dev(context).init();

//     return Consumer<AppState>(
//       builder: (context, appState, child) {
//         return BetterFeedback(
//             child: child!); // stop MaterialApp from rebuilding on state change
//       },
//       child: Consumer<ThemeState>(
//         builder: (context, themeState, child) {
//           return Stack(
//             children: [
//               MaterialApp(
//                 builder: (context, child) {
//                   Responsive.initDevicePixelRatio(context);
//                   Responsive.initSafeAreaPadding(context);
//                   Injector.tutorial(context).initState(context);

//                   // ignore device text size settings
//                   return Responsive.overrideDeviceTextSizeSettings(
//                     context,
//                     // make widget sizes responsive
//                     child: ResponsiveWrapper.builder(
//                       child,
//                     ),
//                   );
//                 },
//                 title: 'Flutter Demo',
//                 navigatorKey: navigatorKey, // allow navigation by key
//                 routes: customRoutes,
//                 theme: ThemeSet.light,
//                 darkTheme: ThemeSet.dark,
//                 themeMode: themeState.themeMode,
//                 home: const RunFirstInit(screenAfter: AuthFlowScreen()),
//                 // internationalization
//                 localizationsDelegates: const [
//                   AppLocalizations.delegate,
//                   GlobalMaterialLocalizations.delegate,
//                   GlobalWidgetsLocalizations.delegate,
//                   GlobalCupertinoLocalizations.delegate,
//                 ],
//                 supportedLocales: const [
//                   Locale('en', ''), // English, no country code
//                   Locale('fr', ''), // French, no country code
//                 ],
//               ),
//               // feedback button
//               // if (Injector.app(context).showFeedbackButton)
//               //   Align(
//               //     alignment: Alignment.topRight,
//               //     child: Padding(
//               //       padding: const EdgeInsets.fromLTRB(0, 20, 20, 0),
//               //       child: IconButton(
//               //           onPressed: () {
//               //             BetterFeedback.of(context)
//               //                 .show((UserFeedback feedback) async {
//               //               // Do something with the feedback
//               //               Printer.print('BetterFeedback', feedback.text);
//               //             });
//               //           },
//               //           icon: const Icon(Icons.feedback_rounded)),
//               //     ),
//               //   ),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }
