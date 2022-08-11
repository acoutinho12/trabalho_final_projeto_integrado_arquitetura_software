import 'package:flutter/material.dart';
import 'package:ollen/core/utils/colors.dart';
import 'package:ollen/features/home/presentation/pages/home_page.dart';

class BottomTabWidget extends StatefulWidget {
  const BottomTabWidget({Key? key}) : super(key: key);

  @override
  State<BottomTabWidget> createState() => _BottomTabWidgetState();
}

class _BottomTabWidgetState extends State<BottomTabWidget> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const HomePage(),
    const HomePage(),
  ];

  static const _items = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.favorite),
      label: 'Favoritos',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Perfil',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ColorConstants.appColor,
        items: _items,
        currentIndex: _selectedIndex,
        selectedLabelStyle: const TextStyle(
            fontSize: 12, fontFamily: 'Roboto', fontWeight: FontWeight.bold),
        selectedItemColor: ColorConstants.primaryColor,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}
