# Changelog

All notable changes to this project will be documented in this file.

## 0.0.3

### Aug 7, 2026

### ✨ Fix

- Fixed `AppSwitch` widget with null-coalescing fallbacks to prevent UnexpectedNullError crashes when processing optional parameters.


## 0.0.2

### Aug 22, 2025

### ✨ Updated

- Updated Dart sdk to 3.9.0
- Removed `flutter_lints` Dependency

## 0.0.1

### Added

- Initial release of `reusable_switch_btn`.
- Introduced three main widgets:
    - `AppSwitch`: A customizable, animated switch with text labels.
    - `AppSwitchCard`: A card layout containing a switch button with a title.
    - `NormalSwitch`: A simple wrapper around the native Flutter Switch widget.
- Customization options for colors, text, and initial switch state.
