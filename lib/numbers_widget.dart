import 'package:flutter/material.dart';
import 'placeholder_widget.dart';
import 'home_widget.dart';
import 'package:http/http.dart' as http;

class Numbers extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Numbers> {

  @override
  Widget build(BuildContext context) {
    //return ListTile(
    return ListTile(
      title: Text('COVID Numbers Globally', style: TextStyle(fontSize: 35)),
      subtitle: Text(
<<<<<<< HEAD
        'TotalCases: 12,898,827                                '
        'Total Deaths: 568,815                                 '
        'Total cases: 7,517,940',
        style: TextStyle(fontSize: 20),
      ),
    );
  }

  bool onTabTapped() {
    setState(() {
      infectionRisk = !infectionRisk;
    });
    return true;
=======
          'Total Cases: 12,898,827                                '
          'Total Deaths: 568,815                                 '
          'Total Cases: 7,517,940',

            style: TextStyle(fontSize: 20),
      ),
    );
>>>>>>> 29971144e51e440bea062795a075be6f395a50b4
  }
}
