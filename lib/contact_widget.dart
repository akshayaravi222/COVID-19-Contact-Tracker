import 'package:flutter/material.dart';
import 'placeholder_widget.dart';
import 'home_widget.dart';
import 'package:http/http.dart' as http;

class Contact extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Contact> {
  bool infectionRisk = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'John Doe',
      ),
      trailing: Icon(
        // Add the lines from here...
        infectionRisk ? Icons.warning : Icons.check_circle,
        color: infectionRisk ? Colors.yellow : Colors.green,
      ),
      onTap: onTabTapped,
    );
  }

  bool onTabTapped() {
    setState(() {
      infectionRisk = !infectionRisk;
    });
    return true;
  }
}