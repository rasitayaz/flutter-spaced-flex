# Flutter Spaced Flex

[![Pub](https://img.shields.io/pub/v/spaced_flex.svg?style=popout)](https://pub.dartlang.org/packages/spaced_flex)
[![](https://img.shields.io/badge/github-rasitayaz-red)](https://github.com/rasitayaz)
[![](https://img.shields.io/badge/buy&nbsp;me&nbsp;a&nbsp;coffee-donate-blue)](https://www.buymeacoffee.com/RasitAyaz)

A Flutter package for easily creating spaced row and column widgets

## Usage

Instead of adding `SizedBox` widgets between `Row` and `Column` widgets every time you add a child to the array, you can now specify a spacing parameter for `SpacedRow` and `SpacedColumn` widgets and let this package do the boring job for you.

For example, the code below creates a `Row` widget and adds `SizedBox(width: 16)` widgets between the children.

```dart
SpacedRow(
    spacing: 16,
    children: [
        Text('Hello'),
        Text('World!'),
        Text(':)'),
    ],
);
```

## Contribution

So far I couldn't think of any fancy features to add to this package but feel free to contribute or state your opinions through [the package's repository](https://github.com/rasitayaz/flutter-spaced-flex).