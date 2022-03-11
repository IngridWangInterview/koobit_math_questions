# koobit_math_questions

KooBits Flutter Exercise

## Before Start

### Version

Flutter 2.10.1 (channel stable)
Dart 2.16.1 (stable)
DevTools 2.9.2

### Packages

#### [Dart Data Class Generator](https://marketplace.visualstudio.com/items?itemName=BendixMa.dart-data-class-generator)

This Package is a Visual Studio Code plugin. Help you to generate class code.

#### [Flutter Version Management](https://fvm.app)

A simple CLI to manage Flutter SDK versions.

#### [bloc](https://bloclibrary.dev)

A predictable state management library for Dart.

#### [equatable](https://pub.dev/packages/equatable)

Simplify Equality Comparisons.

#### [auto_size_text](https://pub.dev/packages/auto_size_text)

Flutter widget that automatically resizes text to fit perfectly within its bounds.

#### [font_awesome_flutter](https://pub.dev/packages/auto_size_text)

The Font Awesome Icon pack available as set of Flutter Icons.

Based on Font Awesome 5.15.4. Includes all free icons:

- Regular
- Solid
- Brands

[Introduction from Flutter Package of the Week](https://www.youtube.com/watch?v=TOAyjIAsT7o)

#### [freezed](https://pub.dev/packages/freezed)

Freezed, yet another code generator for unions/pattern-matching/copy.

#### [freezed](https://pub.dev/packages/freezed)

Freezed, yet another code generator for unions/pattern-matching/copy.

#### [logger](https://pub.dev/packages/logger)

Small, easy to use and extensible logger which prints beautiful logs. Inspired
by [logger](https://github.com/orhanobut/logger) for Android.

### Run setting

This project has two variable MUST need to set when running:

- VERSION
    - String type, to declare the version of this app.

Optional setting:

- LOG_SUPPORT_ANSI
    - For Logger. Default: false. Make logs have output lines for the terminal. Not work for android
      studio.
- LOG_LEVEL
    - For Logger. Default: verbose. All logs with levels below this level will be omitted.
- LOG_METHOD_COUNT
    - For Logger. Default: 0. How many call stack lines that log would print when printing any log
      besides Error log.
- LOG_ERR_METHOD_COUNT
    - For Logger. Default: 0. How many call stack lines that log would print when printing Error
      log.
- LOG_COLORS
    - For Logger. Default: true. Make logs colorful for the terminal. Android studio would not be
      enabled. Should download the grep console and turn LOG_SUPPORT_ANSI to be false.

## Command Line Running

    export v=$(git rev-parse --short HEAD);flutter run -t lib/main.dart --dart-define=VERSION=$v
