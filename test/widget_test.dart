// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/cupertino.dart';

import 'package:music_player/main.dart';

void main() {
  testWidgets('Music Player Widget Test', (WidgetTester tester) async {
   // Build our app and trigger a frame. 
   await tester.pumpWidget(MyApp()); 
   
   // Verify that our Player starts without already playing songs. 
   expect(find.text('tap to play'), findsOneWidget); 
   
   
   // Tap the 'Play' icon and trigger a frame. 
   await tester.tap(find.byIcon(CupertinoIcons.play_circle)); 
   await tester.pump(); 
   
   // Verify that our Player is working. 
   expect(find.text('tap to play'), findsNothing); 
   //expect(find.text('Playing now - ${_selectedRadio.name}'), findsOneWidget); 
});
}

