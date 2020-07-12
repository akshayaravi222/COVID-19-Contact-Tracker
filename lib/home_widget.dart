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
  //  final List<Widget> _children = [
  //    PlaceholderWidget(Colors.white),
  //    <Widget> [
  //
  //    ],
  //    PlaceholderWidget(Colors.white)
  //  ];
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('COVID-19 Contact Tracer'),
        ),
        body: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () async {
                Future<http.Response> fetchData() {
                  return http.get('https://hack3.litecomet.com/insert.php?location="ABRHS"&user=1');
                }

                await fetchData();
              },
              textColor: Colors.white,
              padding: const EdgeInsets.all(0.0),
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xFF0D47A1),
                      Color(0xFF1976D2),
                      Color(0xFF42A5F5),
                    ],
                  ),
                ),
                padding: const EdgeInsets.all(10.0),
                child:
                const Text('Gradient Button', style: TextStyle(fontSize: 20)),
              ),
            ),
          ],
        ),
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
      );
    }
    void onTabTapped(int index) {
      setState(() {
        _currentIndex = index;
      });
    }
  }
