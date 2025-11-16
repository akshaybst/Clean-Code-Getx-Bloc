
import 'package:flutter/material.dart';

import 'enums.dart';

class AnimationSnackBar {

  void openSnackBar({
    required BuildContext context,
    required String message,
    SnackBarType type = SnackBarType.info,
    Duration duration = const Duration(seconds: 3),
  }) {
    final Color backgroundColor;
    final IconData icon;

    switch (type) {
      case SnackBarType.success:
        backgroundColor = Colors.green;
        icon = Icons.check_circle;
        break;
      case SnackBarType.error:
        backgroundColor = Colors.red;
        icon = Icons.error;
        break;
      default:
        backgroundColor = Colors.black87;
        icon = Icons.info;
        break;
    }

    final snackBar = SnackBar(
      elevation: 5,
      duration: duration,
      backgroundColor: backgroundColor,
      content: Row(
        children: [
          Icon(
            icon,
            key: ValueKey(icon),
            color: Colors.white,
            size: 26,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              message,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

}
