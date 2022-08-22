import 'package:wordsmith_app/ui/components/custom_drawer.dart';
import 'package:wordsmith_app/utils/index.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    required this.showDrawer,
    this.title,
    this.appBarShadow = true,
    required this.body,
    Key? key,
  }) : super(key: key);

  final bool showDrawer;
  final String? title;
  final bool appBarShadow;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //! tap outside text field to unfocus
        FocusNode node = Injector.app(context).rapLineFieldNode;
        if (node.hasPrimaryFocus) {
          node.unfocus(); // unfocus textfield and close keyboard
        }
      },
      child: Scaffold(
        drawer: showDrawer ? const CustomDrawer() : null,
        appBar: AppBar(
          elevation: appBarShadow ? null : 0,
          // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          // systemOverlayStyle: SystemUiOverlayStyle(
          //   // Status bar color
          //   statusBarColor: Theme.of(context).colorScheme.primary,
          //   // statusBarColor: Theme.of(context).colorScheme.primary,
          //   systemNavigationBarDividerColor:
          //       Theme.of(context).colorScheme.primary,

          //   systemNavigationBarColor: Theme.of(context).colorScheme.primary,
          // ),
          centerTitle: true,
          title: Text(title ?? ''),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: body,
          ),
        ),
      ),
    );
  }
}
