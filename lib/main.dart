import 'package:flutter_web/material.dart';
import 'package:hello_world/widget/home_page.dart';

void main() => runApp(FurnitureApp());

class FurnitureApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Furniture Demo',
      home: HomePage(),
    );
  }
}
