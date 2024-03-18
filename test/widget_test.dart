import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_grid_example/main.dart';

void main() {
  testWidgets('Grid view contains multiple tiles', (WidgetTester tester) async {
    await tester.pumpWidget(const DuckyApp());

    expect(find.text('Duck 1'), findsOneWidget);
    expect(find.text('Duck 2'), findsOneWidget);
    expect(find.text('Duck 3'), findsOneWidget);
  });
}
