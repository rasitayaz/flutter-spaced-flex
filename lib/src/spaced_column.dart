import 'package:flutter/widgets.dart';

/// A widget that displays its children in a spaced vertical array.
class SpacedColumn extends Column {
  /// Creates a vertical array of children with the specified spacing.
  SpacedColumn({
    super.key,
    super.mainAxisAlignment,
    super.mainAxisSize,
    super.crossAxisAlignment,
    super.textDirection,
    super.verticalDirection,
    super.textBaseline,
    required List<Widget> children,
    double spacing = 0,
  }) : super(children: _getChildrenWithSpacing(children, spacing));

  /// Adds [SizedBox] widgets that are [spacing] high between the [children].
  static List<Widget> _getChildrenWithSpacing(
    List<Widget> children,
    double spacing,
  ) {
    if (children.length < 2) {
      return children;
    }

    final List<Widget> spacedChildren = [];
    spacedChildren.add(children[0]);
    for (int i = 1; i < children.length; i++) {
      spacedChildren.add(SizedBox(height: spacing));
      spacedChildren.add(children[i]);
    }

    return spacedChildren;
  }
}
