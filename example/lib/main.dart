import 'package:flutter/material.dart';
import 'package:spaced_flex/spaced_flex.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spaced Flex Demo',
      home: Scaffold(
        body: Center(
          child: SpacedColumn(
            mainAxisSize: MainAxisSize.min,
            spacing: 64,
            children: [
              SpacedRow(
                spacing: 16,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text('Hello'),
                  Text('World!'),
                  Text(':)'),
                ],
              ),
              SpacedColumn(
                spacing: 16,
                children: const [
                  Text('Hello'),
                  Text('World!'),
                  Text(':)'),
                ],
              ),
              SpacedFlex(
                spacing: 16,
                mainAxisSize: MainAxisSize.min,
                direction: Axis.horizontal,
                reversed: true,
                children: const [
                  Text('Hello'),
                  Text('World!'),
                  Text(':)'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
