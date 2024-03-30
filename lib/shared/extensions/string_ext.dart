import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../shared.dart';

extension SaveToClipboard on String {
  void showToastCopySuccess(
      {required String text, required BuildContext context}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Code copied to clipboard!',
          style: context.textTheme.labelLarge, // Adjust font size as needed
          softWrap: true,
        ),
        backgroundColor: Colors.black87,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  void copyCode(BuildContext context) {
    Clipboard.setData(ClipboardData(text: this));
    showToastCopySuccess(text: this, context: context);
  }
}
