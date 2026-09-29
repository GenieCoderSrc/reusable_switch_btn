# reusable_switch_btn

A customizable Flutter package that provides flexible and animated switch buttons, including:
- **AppSwitch**: A beautifully animated switch with ON/OFF labels.
- **AppSwitchCard**: A ready-to-use card layout with a title and switch.
- **NormalSwitch**: A simple wrapper around the native Flutter Switch widget.

Easily control user toggles with elegant design and smooth animations.

## Features

- Custom ON/OFF texts.
- Customizable colors (background, text, and active thumb).
- Animated alignment for the switch.
- Card layout ready with title and switch button.
- Optional initial switch state.

## Installation

Add this to your `pubspec.yaml`:

```yaml
resolution: workspace

dependencies:
  reusable_switch_btn: <latest_version>
```

Then run:

```bash
flutter pub get
```

## Usage

### Import
```dart
import 'package:reusable_switch_btn/reusable_switch_btn.dart';
```

### Example: AppSwitch
```dart
AppSwitch(
  activeTxt: 'Yes',
  disableTxt: 'No',
  initSwitched: true,
  onChanged: (bool value) {
    print('Switch state: \$value');
  },
)
```

### Example: AppSwitchCard
```dart
AppSwitchCard(
  title: 'Enable Notifications',
  activeTxt: 'ON',
  disableTxt: 'OFF',
  initSwitched: false,
  onChanged: (bool value) {
    print('Notifications enabled: \$value');
  },
)
```

### Example: NormalSwitch
```dart
NormalSwitch(
  isSwitched: true,
  onChanged: (bool value) {
    print('Normal Switch: \$value');
  },
)
```

## Widgets

| Widget        | Purpose                                |
|---------------|----------------------------------------|
| `AppSwitch`   | Custom animated switch button          |
| `AppSwitchCard` | Switch button inside a card with title |
| `NormalSwitch` | Simple Flutter switch wrapper         |

## Constructor Parameters (AppSwitch)

| Name               | Type                | Description                                       |
|--------------------|---------------------|---------------------------------------------------|
| `activeTxt`         | `String?`            | Text shown when the switch is active (default: ON) |
| `disableTxt`        | `String?`            | Text shown when the switch is inactive (default: OFF) |
| `initSwitched`      | `bool?`              | Initial switch state                              |
| `onChanged`         | `ValueChanged<bool>?`| Callback when switch is toggled                   |
| `activeColor`       | `Color?`             | Background color when active                     |
| `deActiveColor`     | `Color?`             | Background color when inactive                   |
| `activeTxtColor`    | `Color?`             | Active text color                                 |
| `activeOptionColor` | `Color?`             | Color of the active circle/thumb                  |

## Notes
- `AppSwitch` uses an external text style dependency (`app_style` package). You can replace it with your custom TextStyle if needed.
- Highly customizable to fit different UI designs.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

Feel free to open issues or contribute if you find ways to improve this widget!

## Author

Shohidul Islam
