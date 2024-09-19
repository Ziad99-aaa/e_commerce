import 'package:e_commerce/Pages/Home_Screen.dart';
import 'package:e_commerce/Shared/Text_Theme.dart';
import 'package:flutter/material.dart';

class Dialogutils {
  static void ShowLoudingDialog(
      {required BuildContext context, bool barrierDismissible = false}) {
    showDialog(
        barrierDismissible: barrierDismissible,
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Row(
              children: [CircularProgressIndicator(), Text("Louding...")],
            ),
          );
        });
  }

  static void HideLoudingDialog(BuildContext context) {
    Navigator.pop(context);
  }

  static void ShowMessageDialog({
    required BuildContext context,
    String title = '',
    required String content,
    bool barrierDismissible = false,
    String? posActionName,
    Function? posAction,
    String? nigActionName,
    Function? nigAction,
  }) {
    List<Widget> actions = [];
    if (posActionName != null) {
      actions.add(ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
            Navigator.pushReplacementNamed(context, HomeScreen.routName);

            // posAction!.call();
          },
          child: Text(posActionName)));
    }
    if (nigActionName != null) {
      actions.add(ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
            // nigAction!.call();
          },
          child: Text(nigActionName)));
    }

    showDialog(
        barrierDismissible: barrierDismissible,
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              title,
              style: TextThemee.bodyLargeBlack,
            ),
            content: Text(content, style: TextThemee.bodymidBlack),
            actions: actions,
          );
        });
  }
}
