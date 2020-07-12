import 'package:covid19_contact_tracker/contact_widget.dart';
import 'package:covid19_contact_tracker/notif_widget.dart';
import 'package:covid19_contact_tracker/numbers_widget.dart';
import 'package:flutter/material.dart';
import 'placeholder_widget.dart';
import 'package:http/http.dart' as http;

class CovidForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CovidState();
  }
}

class _CovidState extends State<CovidForm> {
  int _currentIndex = 1;
  final List<Widget> _children = [
    Notif(),
    Numbers(),
    Contact()
  ];


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Flexible(
            child: new TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                )
            ),
          ),
          new Flexible(
            child: new TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Location',
                )
            ),
          ),
          new Flexible(
            child: new TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Do you have the virus?',
                )
            ),
          ),
          ]
    );
  }


}