import 'package:flutter/material.dart';

class NormalSwitch extends StatelessWidget {
  final ValueChanged<bool>? onChanged;
  final bool? isSwitched;

  const NormalSwitch({super.key, this.onChanged, this.isSwitched = false});

  @override
  Widget build(BuildContext context) {
    // print('isSwitched: $isSwitched');
    return Switch(
      value: isSwitched!,
      onChanged: (bool value) {
        // print(value);
        if (onChanged != null) {
          onChanged!(value);
        }
      },
    );
  }
}
