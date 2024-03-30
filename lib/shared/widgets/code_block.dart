import 'package:design_patern_and_principle/shared/extensions/context_ext.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syntax_highlight/syntax_highlight.dart';

import '../constants/size.dart';
import '../extensions/string_ext.dart';
import 'common.dart';

class CodeBlockWidget extends StatefulWidget {
  const CodeBlockWidget({super.key, required this.code, required this.title});
  final String code;
  final String title;

  @override
  State<CodeBlockWidget> createState() => _CodeBlockWidgetState();
}

class _CodeBlockWidgetState extends State<CodeBlockWidget> {
  late final Future<Highlighter> _dartDarkHighlighter;

  @override
  void initState() {
    super.initState();
    _dartDarkHighlighter = initHighlighter();
  }

  Future<Highlighter> initHighlighter() async {
    var darkTheme = await HighlighterTheme.loadDarkTheme();
    return Highlighter(
      language: 'dart',
      theme: darkTheme,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Dimensions.normal),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(RadiusBorder.normal),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Align make container take width at posible
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  widget.title,
                  style: context.bodyStyle,
                ),
              ),
              FilledButton(
                onPressed: () => widget.code.copyCode(context),
                child: const Text("Copy"),
              ),
            ],
          ),
          FutureBuilder<Highlighter>(
            future: _dartDarkHighlighter,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return SelectableText.rich(
                  snapshot.data!.highlight(widget.code),
                  style: GoogleFonts.jetBrainsMono(
                    fontSize: 14,
                    height: 1.3,
                  ),
                );
              } else {
                return centerIndicator();
              }
            },
          ),
        ],
      ),
    );
  }
}
