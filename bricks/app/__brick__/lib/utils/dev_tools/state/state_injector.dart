import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wordsmith_app/state/app_state.dart';
import 'package:wordsmith_app/state/user_state.dart';
import 'package:wordsmith_app/state/auth/authentication_state.dart';
import 'package:wordsmith_app/state/word_stack/room_state.dart';
import 'package:wordsmith_app/state/wordsmiths/wordsmiths_state.dart';

class Injector {
  static AppState app(BuildContext context) =>
      Provider.of<AppState>(context, listen: false);
  static UserState user(BuildContext context) =>
      Provider.of<UserState>(context, listen: false);
  static AuthenticationState authen(BuildContext context) =>
      Provider.of<AuthenticationState>(context, listen: false);

  static RoomState room(BuildContext context) =>
      Provider.of<RoomState>(context, listen: false);
  static WordsmithsState wordsmiths(BuildContext context) =>
      Provider.of<WordsmithsState>(context, listen: false);
}
