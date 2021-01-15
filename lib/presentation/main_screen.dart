import 'package:flutter/material.dart';
import 'package:my_app/data/sources/local_data_source.dart';
import 'package:my_app/data/sources/remote_data_source.dart';
import 'package:my_app/data/sources/test_data_source.dart';
import 'package:my_app/presentation/data_list_view.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  final List<Widget> bodyWidgets = [
    DataListView(LocalDataSource()),
    DataListView(RemoteDataSource()),
    DataListView(TestDataSource()),
  ];

  final List<String> titles = [
    'Local data',
    'Remote data',
    'Test data',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titles.elementAt(selectedIndex)),
      ),
      body: bodyWidgets.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_one),
            label: titles.elementAt(0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_two),
            label: titles.elementAt(1),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_3),
            label: titles.elementAt(2),
          ),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
