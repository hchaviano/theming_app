# Theming App

![coverage][coverage_badge]
[![style: flutter lints][flutter_lints_badge]][flutter_lints_link]
[![License: MIT][license_badge]][license_link]

A project to show how to work with app theme.

---

## Getting Started 🚀

This project contains 3 flavors:

- development
- staging
- production

To run the desired flavor either use the launch configuration in VSCode/Android Studio or use the following commands:

```sh
# Development
$ flutter run --flavor development --target lib/main_development.dart

# Staging
$ flutter run --flavor staging --target lib/main_staging.dart

# Production
$ flutter run --flavor production --target lib/main_production.dart
```

## Melos and FVM

- Install melos: `dart pub global activate melos`
- Bootstrapping repo: `melos bootstrap` or `melos bs` - NOTE: If flutter version doesn't match expected version in `pubsec.yaml`, set the sdkPath while bootstrapping like so: `melos bootstrap --sdk-path=/Users/<YOUR_USER>/fvm/versions/3.7.0` or `melos bootstrap --sdk-path=.fvm/flutter_sdk`
- Cleaning repo: `melos clean`

_\*Theming App works on iOS, Android, Web, and Windows._

---

[coverage_badge]: coverage_badge.svg
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[flutter_lints_badge]: https://img.shields.io/badge/style-flutter_lints-blue.svg
[flutter_lints_link]: https://pub.dev/packages/flutter_lints
