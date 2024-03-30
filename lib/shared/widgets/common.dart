import 'package:design_patern_and_principle/shared/extensions/context_ext.dart';
import 'package:design_patern_and_principle/shared/extensions/widget_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:gap/gap.dart';

import '../constants/size.dart';

var brightness =
    SchedulerBinding.instance.platformDispatcher.platformBrightness;
bool isDarkMode = brightness == Brightness.dark;

Widget gapF(double factor) =>
    Gap(Dimensions.normal * factor); // gap with factor
Widget gapN() => const Gap(Dimensions.normal); // gap normal
Widget gapS() => const Gap(Dimensions.small); // gap small
Widget gapSM() => const Gap(Dimensions.small / 2); // gap small
Widget gapL() => const Gap(Dimensions.large); // gap large

Widget divider([double height = 4]) {
  return Divider(
    height: height,
    color: isDarkMode
        ? Colors.white.withOpacity(0.4)
        : Colors.black.withOpacity(0.4),
  );
}

Widget widgetByThemeMode({required Widget light, required Widget dark}) {
  return isDarkMode ? dark : light;
}

Widget centerIndicator() => const Center(child: CircularProgressIndicator());

class TextWidget extends StatelessWidget {
  const TextWidget(this.text, {super.key, this.isTitle = false});
  final String text;
  final bool isTitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      isTitle ? text.toUpperCase() : text,
      style: isTitle
          ? context.titleStyle!.copyWith(fontWeight: FontWeight.bold)
          : context.bodyStyle,
    );
  }
}

class ListItemWidget extends StatelessWidget {
  const ListItemWidget(
    this.data, {
    super.key,
  });
  final List<String> data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: data
          .map(
            (text) => Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: Dimensions.small),
                  child: Badge(
                    backgroundColor: context.colorScheme.onPrimary,
                    smallSize: BadgeSize.normal,
                  ),
                ),
                gapS(),
                Flexible(child: SelectableText(text, style: context.bodyStyle)),
              ],
            ),
          )
          .toList()
          .separateCenter(Dimensions.small),
    );
  }
}

class ListItemBoldWidget extends StatelessWidget {
  const ListItemBoldWidget(this.data, {super.key});
  final Map<String, String> data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: data.entries
          .map(
            (entry) => Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: Dimensions.small),
                  child: Badge(
                    backgroundColor: context.colorScheme.onPrimary,
                    smallSize: BadgeSize.normal,
                  ),
                ),
                gapS(),
                Flexible(
                  child: SelectableText.rich(
                    TextSpan(
                      text: entry.key,
                      style: context.bodyBoldStyle,
                      children: [
                        TextSpan(text: entry.value, style: context.bodyStyle),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
          .toList()
          .separateCenter(Dimensions.small),
    );
  }
}

class MyExpansionTile extends StatelessWidget {
  const MyExpansionTile(
      {super.key, required this.title, required this.children});
  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final border = Border(
      bottom: BorderSide(
        color: context.colorScheme.outline,
        width: 1,
      ), // Set the bottom border
    );
    return ExpansionTile(
      shape: border,
      collapsedShape: border,
      initiallyExpanded: true,
      title: TextWidget(
        title,
        isTitle: true,
      ),
      expandedAlignment: Alignment.topLeft,
      childrenPadding: const EdgeInsets.fromLTRB(
        Dimensions.normal,
        Dimensions.small,
        Dimensions.normal,
        Dimensions.normal,
      ),
      children: children,
    );
  }
}
