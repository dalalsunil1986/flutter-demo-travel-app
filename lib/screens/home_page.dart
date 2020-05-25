import 'package:flutter/material.dart';
import 'package:travel_ui/widgets/destinations_carousel.dart';
import 'package:travel_ui/widgets/filterable_icons.dart';
import 'package:travel_ui/widgets/hotels_carousel.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState(title);
}

class _MyHomePageState extends State<MyHomePage> {
  final String _title;
  _MyHomePageState(this._title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 38, right: 80, left: 14, bottom: 20),
            child: Text(
              _title,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
            ),
          ),
          FilterableIcons(),
          SizedBox(height: 8),
          DestinationsCarousel(),
          HotelsCarousel(),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
