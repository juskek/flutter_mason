// import 'dart:ui';

// import 'package:wordsmith_app/utils/index.dart';

// import 'package:top_snackbar_flutter/top_snack_bar.dart';

import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:wordsmith_app/utils/index.dart';
import 'package:animations/animations.dart';

class NotificationSet {
  const NotificationSet();

  /// Shows a widget in a BuildContext on top of the current one
  ///
  /// Differs from customDialog where any type of Widget can be shown
  /// Does not have a button to close the pop up, apart from tapping outside the
  /// Widget returned by [builder].
  /// [onClose] is called when area around popup is pressed, after the popup is
  /// closed.
  Future<dynamic> customPopup(BuildContext mainContext,
      {

      /// Builder to return Widget to show as popup
      ///
      /// If a builder is provided, child should be null

      Widget Function(BuildContext popupContext)? builder,

      /// Child widget to show as popup
      ///
      /// If a child is provided, builder should be null
      Widget? child,
      void Function(BuildContext popupContext)? onClose,
      bool darkenOverlay = true}) {
    assert(child == null || builder == null);
    assert(debugCheckHasMaterialLocalizations(mainContext));
    // new method
    final ThemeData theme = Theme.of(mainContext);
    return showGeneralDialog(
      context: mainContext,
      pageBuilder: (BuildContext buildContext, Animation<double> animation,
          Animation<double> secondaryAnimation) {
        final Widget pageChild = child ?? Builder(builder: builder!);
        return Builder(builder: (BuildContext context) {
          return AlertDialog(
              insetPadding: const EdgeInsets.symmetric(
                  vertical: 0, horizontal: 50), // controls size of dialog
              scrollable: false,
              content: SizedBox(
                // controls size of dialog
                // height: Responsive.percentHeight(context, 50),
                // no height so that it takes heigth of children
                width: Responsive.screenWidth(context),
                child: theme != null
                    ? Theme(data: theme, child: pageChild)
                    : pageChild,
              ));
        });
      },
      barrierDismissible: true,
      barrierLabel:
          MaterialLocalizations.of(mainContext).modalBarrierDismissLabel,
      barrierColor: Colors.black54,
      transitionDuration: const Duration(milliseconds: 400),
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        // used to build the primary content of the route (typically a dialog widget)
        CurvedAnimation curvedAnimation = CurvedAnimation(
          parent: animation,
          curve: Curves.easeInOut,
          reverseCurve: Curves.easeInOut,
        );
        return ScaleTransition(
          scale: curvedAnimation,
          child: Opacity(
            opacity: curvedAnimation.value,
            child: child, // child comes from pageBuilder
          ),
        );
      },
    );
    // old method
    return showGeneralDialog(
        barrierColor: Colors.black.withOpacity(0.5),
        transitionBuilder:
            (popupContext, animation, secondaryAnimation, widget) {
          // defines how the route arrives on and leaves off the screen
          return ScaleTransition(
            scale: CurvedAnimation(
              parent: animation,
              curve: Curves.bounceIn,
              reverseCurve: Curves.bounceIn,
            ),
            child: Opacity(
              opacity: animation.value,
              child: Dialog(
                child: builder!(popupContext),
              ),
            ),
          );
        },
        transitionDuration: Duration(milliseconds: 200),
        barrierDismissible: true,
        barrierLabel: '',
        context: mainContext,
        pageBuilder: (context, animation1, animation2) {
          // used to build the primary content of the route (typically a dialog widget)
          return Text('PAGE BUILDER');
        });
    // return showDialog(
    //   useSafeArea: false,
    //   barrierColor: ColorSet.transparent,
    //   context: mainContext,
    //   builder: (popupContext) => Stack(
    //     children: [
    //       Container(
    //         color: darkenOverlay
    //             ? ColorSet.black.withOpacity(0.5)
    //             : ColorSet.transparent,
    //       ),
    //       // tap around dialog to close
    //       // behaviour occurs by default but need to call onClose so this is necessary
    //       Center(
    //         child: Material(
    //           color: Colors.transparent,
    //           child: InkWell(
    //               onTap: () {
    //                 Printer.print('CustomPopup', 'closing popup');
    //                 Navigator.pop(popupContext);
    //                 onClose?.call(popupContext);
    //               },
    //               child: Container()),
    //         ),
    //       ),

    //       SafeArea(
    //         child: Align(
    //           alignment: Alignment.bottomCenter,
    //           child: Padding(
    //             padding: EdgeInsets.all(Responsive.percentWidth(
    //                 mainContext, 5)), // set min padding of popup here
    //             child: Material(
    //               color: ColorSet.transparent,
    //               child: builder(popupContext),
    //             ),
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }

//   // todo: customDialogText where you can pass a String instead of a Text widget

//   /// Shows a formatted dialog in a BuildContext on top of the current one
//   Future<dynamic> customDialog(BuildContext mainContext,
//       {required Widget Function(BuildContext dialogContext) dialogChild,
//       void Function()? onClose, // called when dialog is popped off route
//       bool blurOverlay = false}) {
//     return showDialog(
//       barrierColor: ColorSet.transparent,
//       context: mainContext,
//       builder: (dialogContext) => BackdropFilter(
//         filter: ImageFilter.blur(
//             sigmaX: blurOverlay ? 10 : 0, sigmaY: blurOverlay ? 10 : 0),
//         child: Stack(
//           alignment: Alignment.center,
//           children: [
//             // tap around dialog to close
//             // behaviour occurs by default but need to call onClose so this is necessary
//             Material(
//               color: Colors.transparent,
//               child: InkWell(
//                   onTap: () {
//                     Navigator.pop(dialogContext);
//                     if (onClose != null) {
//                       onClose();
//                     }
//                   },
//                   child: Container()),
//             ),

//             Dialog(
//               insetPadding: EdgeInsets.all(Responsive.percentWidth(
//                   mainContext, 5)), // set min padding of dialog here
//               shape: Styles.radii.roundedRectangleBorder,
//               backgroundColor: ColorSet.black,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Align(
//                     alignment: Alignment.centerRight,
//                     child: CustomCloseButton(
//                       mainContext,
//                       closeCallback: () => Navigator.pop(dialogContext),
//                       inverted: true,
//                       onClose: onClose,
//                     ),
//                   ),
//                   Padding(
//                     padding: Styles.padding.dialogContentPadding,
//                     child: dialogChild(dialogContext),
//                   ),
//                   Padding(
//                     padding: Styles.padding.dialogHoneycombPadding,
//                     child: Styles.iconography
//                         .honeycombIcon(mainContext, size: 48, inverted: true),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

  /// Shows a dropdown notification in a BuildContext on top of the current one
  ///
  /// Notify user can be set to false if there are cases where the dropdown notification should not show

  void customDropdownNotification(BuildContext context,
      {required String message, bool notifyUser = true}) {
    if (notifyUser) {
      showTopSnackBar(
          context,
          Card(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                message,
                textAlign: TextAlign.center,
              ),
            ),
          ));
    }
  }
}
