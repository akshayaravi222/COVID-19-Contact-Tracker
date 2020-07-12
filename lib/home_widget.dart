import 'package:flutter/material.dart';
import 'placeholder_widget.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}
class _HomeState extends State<Home> {
  int _currentIndex = 1;
  String dropdownValue = 'Massachusetts';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('COVID Contact Tracer'),
      ),
      //body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.notifications),
            title: new Text('Notifications'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Contacts')
          )
        ],
      ),
      body: Center(
        child: Column(children: <Widget>[
          Text(
            'COVID-19 Globally',
            style: TextStyle(fontSize: 50),
          ),
          Text(
            'Total Cases: 12,839,626',
            style: TextStyle(fontSize: 25),

          ),
          Text(
            'Total Recovered Cases: 7,477,717',
            style: TextStyle(
              fontSize: 25,
              height: 1.5,
            ),
          ),
          Text(
            'Total Deaths: 567,575',
            style: TextStyle(
              fontSize: 25,
              height: 1.5,
            ),
          ),


          Text(
            'COVID-19 in the US',
            style: TextStyle(
              fontSize: 50,
            ),
          ),
          Text(
            'Total Cases: 3,355,646',
            style: TextStyle(fontSize: 25),

          ),
          Text(
            'Recovered Cases: 1,490,446',
            style: TextStyle(
              fontSize: 25,
              height: 1.5,
            ),
          ),
          Text(
            'Total Deaths: 137,403',
            style: TextStyle(
              fontSize: 25,
              height: 1.5,
            ),
          ),


          Text(
            'Select a state to get more information',
            style: TextStyle(
              fontSize: 25,
              height: 1.5,
            ),
          ),
          new DropdownButton<String>(
            value: dropdownValue,
            icon: Icon(Icons.arrow_downward),
            iconSize: 24,
            elevation: 16,
            style: TextStyle(
              color: Colors.deepPurple,
              fontSize: 40,
            ),
            underline: Container(
              height: 2,
              color: Colors.deepPurpleAccent,
            ),
            onChanged: (String newValue) {
              setState(() {
                dropdownValue = newValue;
              });
            },
            items: <String>[
              'Free',
              'Massachusetts',
              'New York',
              'Texas',
              'Florida'
            ]
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(

                value: value,
                child: Text(value),
              );
            })
                .toList(),

          ),

        ]),
      ),
    );
  }


  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}