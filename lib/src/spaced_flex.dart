import 'package:flutter/widgets.dart';

/// A widget that displays its children in a spaced array.
class SpacedFlex extends Flex {
  /// Creates an array of children with the specified spacing.
  SpacedFlex({
    super.key,
    super.mainAxisAlignment,
    super.mainAxisSize,
    super.crossAxisAlignment,
    super.textDirection,
    super.verticalDirection,
    super.textBaseline,

    /// Spacing between child widgets.
    double spacing = 0,

    /// Wether the display order of the children should be reversed.
    bool reversed = false,
    required Axis direction,
    required List<Widget> children,
  }) : super(
          children: _getChildrenWithSpacing(
            spacing: spacing,
            reversed: reversed,
            direction: direction,
            children: children,
          ),
          direction: direction,
        );

  /// Adds [SizedBox] widgets that are [spacing] high or wide
  /// depending on the [direction] between the [children]
  /// and reverses the order of the children if [reversed] is true.
  static List<Widget> _getChildrenWithSpacing({
    required double spacing,
    required bool reversed,
    required Axis direction,
    required List<Widget> children,
  }) {
    if (children.length < 2) {
      return children;
    }

    final List<Widget> spacedChildren = [];
    spacedChildren.add(children[0]);
    for (int i = 1; i < children.length; i++) {
      spacedChildren.add(SizedBox(
        width: direction == Axis.horizontal ? spacing : null,
        height: direction == Axis.vertical ? spacing : null,
      ));
      spacedChildren.add(children[i]);
    }

    return reversed ? spacedChildren.reversed.toList() : spacedChildren;
  }
}

/// A widget that displays its children in a spaced vertical array.
class SpacedColumn extends SpacedFlex {
  /// Creates a vertical array of children with the specified spacing.
  SpacedColumn({
    super.key,
    super.mainAxisAlignment,
    super.mainAxisSize,
    super.crossAxisAlignment,
    super.textDirection,
    super.verticalDirection,
    super.textBaseline,
    super.spacing,
    super.reversed,
    required super.children,
  }) : super(direction: Axis.vertical);
}

/// A widget that displays its children in a spaced horizontal array.
class SpacedRow extends SpacedFlex {
  /// Creates a horizontal array of children with the specified spacing.
  SpacedRow({
    super.key,
    super.mainAxisAlignment,
    super.mainAxisSize,
    super.crossAxisAlignment,
    super.textDirection,
    super.verticalDirection,
    super.textBaseline,
    super.spacing,
    super.reversed,
    required super.children,
  }) : super(direction: Axis.horizontal);
}
