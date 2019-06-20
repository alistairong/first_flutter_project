import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';
import 'package:hello_world/widget/page_body.dart';
import 'package:hello_world/widget/page_small_body.dart';
import './button_row.dart';
import './responsive_layout.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text("Furniture",
            style: TextStyle(
                color: Colors.black,
                fontSize: 24.0,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic)),
        leading: Image.asset("icon/nav-icon.png"),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Icon(Icons.search, color: Colors.black),
          )
        ],
      ),
      body: ResponsiveLayout(
        largeChild: Stack(
          children: <Widget>[
            Body(),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(48.0),
                child: SizedBox(
                  height: 50.0,
                  child: ButtonRow(),
                ),
              ),
            ),
          ],
        ),
        smallChild: SmallBody(),
      ),
    );
  }
}
