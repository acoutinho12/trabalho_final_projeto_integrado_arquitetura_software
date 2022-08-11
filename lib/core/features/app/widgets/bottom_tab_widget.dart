import 'package:flutter/material.dart';
import 'package:ollen/core/utils/colors.dart';
import 'package:ollen/core/widgets/custom_app_bar.dart';
import 'package:ollen/features/home/presentation/pages/home_page.dart';

class BottomTabWidget extends StatefulWidget {
  const BottomTabWidget({Key? key}) : super(key: key);

  @override
  State<BottomTabWidget> createState() => _BottomTabWidgetState();
}

class _BottomTabWidgetState extends State<BottomTabWidget> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    HomePage(),
    HomePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Øllen",
        withActions: true,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ColorConstants.appColor,
        items: const <BottomNavigationBarItem>[
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
        ],
        currentIndex: _selectedIndex,
        selectedLabelStyle: const TextStyle(
            fontSize: 12, fontFamily: 'Roboto', fontWeight: FontWeight.bold),
        selectedItemColor: ColorConstants.primaryColor,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
