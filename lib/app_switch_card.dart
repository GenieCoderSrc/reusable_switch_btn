import 'package:flutter/material.dart';

import 'app_switch.dart';

class AppSwitchCard extends StatelessWidget {
  const AppSwitchCard({
    super.key,
    required this.title,
    this.activeTxt,
    this.disableTxt,
    this.initSwitched,
    this.onChanged,
    this.activeColor,
    this.deActiveColor,
    this.activeTxtColor,
    this.activeOptionColor,
    this.padding,
    this.txtStyle,
  });

  final String title;
  final String? activeTxt;
  final String? disableTxt;
  final bool? initSwitched;
  final ValueChanged<bool>? onChanged;
  final Color? activeColor;
  final Color? deActiveColor;
  final Color? activeTxtColor;
  final Color? activeOptionColor;
  final EdgeInsetsGeometry? padding;
  final TextStyle? txtStyle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding:
            padding ??
            const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Text(title, style: txtStyle ?? theme.textTheme.bodySmall),
            ),
            AppSwitch(
              activeTxt: activeTxt,
              disableTxt: disableTxt,
              initSwitched: initSwitched,
              onChanged: onChanged,
              activeColor: activeColor,
              deActiveColor: deActiveColor,
              activeTxtColor: activeTxtColor,
              activeOptionColor: activeOptionColor,
            ),
          ],
        ),
      ),
    );
  }
}
