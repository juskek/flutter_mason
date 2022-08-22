
- [1. {{app_name}}](#1-app_name)
  - [1.1. Setup](#11-setup)
    - [Flavours](#flavours)
      - [Run Commands](#run-commands)
    - [1.1.1. Changing app package name (Deprecated due to flavours)](#111-changing-app-package-name-deprecated-due-to-flavours)
  - [1.2. Dev](#12-dev)
    - [1.2.1. Launcher Icons](#121-launcher-icons)
      - [1.2.1.1. Android](#1211-android)
      - [1.2.1.2. iOS](#1212-ios)
  - [Included Features](#included-features)
  - [1.3. Known Bugs](#13-known-bugs)

# 1. {{app_name}}

## 1.1. Setup

### Flavours
1. Config pubspec.yaml > flavorizr key
2. flutter pub get
3. flutter pub run flutter_flavorizr
4. Run command for flavour

#### Run Commands
Dev and test: 
flutter run --flavor flav_test -t lib/main_flav_test.dart
flutter run --flavor flav_dev -t lib/main_flav_dev.dart
Prod: 
flutter run --release --flavor flav_prod -t lib/main_flav_prod.dart


### 1.1.1. Changing app package name (Deprecated due to flavours)
`flutter pub run change_app_package_name:main technology.kek.project_name.app`

## 1.2. Dev
### 1.2.1. Launcher Icons
https://stackoverflow.com/questions/43928702/how-to-change-the-application-launcher-icon-on-flutter
#### 1.2.1.1. Android
- Faced issues with getting flutter launcher icon packages to work for android background and foreground
- Manually setting the icons in android\app\src\main\res also does not affect the android icon foreground and background
- Need to open Android Studio > Image Studio > Configure Image Asset by going to android/app/src/main/res and right clicking -> New -> Image Asset
- This option does not appear if the gradle sync fails
  - To fix this, open the build.gradle file in Android Studio, comment out the manifestPlaceholders section, then go to File > Sync Project with Gradle Files
- The option should now appear 

- Set icons manually instead
Flutter has its own default icon for every app in its Android and Ios folder so there are few steps that I would like to show to change the app icon.
#### 1.2.1.2. iOS
- Go inside ios\Runner in your flutter app and there paste the Assets.xcassets content
Restart your emulator or rebuild your application 😁

## Included Features


## 1.3. Known Bugs