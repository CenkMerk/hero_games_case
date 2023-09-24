import 'package:flutter/material.dart';
import 'package:hero_games_case/components/custom_app_bar.dart';
import 'package:hero_games_case/components/page_2_content.dart';

class Page2Screen extends StatefulWidget {
  const Page2Screen({super.key});

  @override
  State<Page2Screen> createState() => _Page1ScreenState();
}

class _Page1ScreenState extends State<Page2Screen> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: Colors.grey,
  );

  static const List<Widget> _widgetOptions = [
    Page2Content(),
    Text('Index 1', style: optionStyle),
    Text('Index 2', style: optionStyle),
    Text('Index 3', style: optionStyle),
  ];

  static const List<Map<String, dynamic>> _tabItems = [
    {'icon': Icons.home, 'label': 'Home'},
    {'icon': Icons.near_me, 'label': 'Index 1'},
    {'icon': Icons.leaderboard, 'label': 'Index 2'},
    {'icon': Icons.perm_identity, 'label': 'Index 3'},
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppBar(
          onBackButtonPressed: () {
            Navigator.pop(context);
          },
        ),
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: _tabItems
              .map(
                (item) => BottomNavigationBarItem(
                  icon: Icon(item['icon'], size: 35.0),
                  label: item['label'],
                ),
              )
              .toList(),
          currentIndex: _selectedIndex,
          showSelectedLabels: false,
          selectedItemColor: Colors.green[800],
          unselectedItemColor: Colors.grey,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
