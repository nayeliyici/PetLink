import 'package:flutter/material.dart';
import 'package:pet_link/pages/home.dart';
import 'package:pet_link/pages/adoption.dart';
import 'package:pet_link/pages/lost.dart';
import 'package:pet_link/pages/notification.dart';
import 'package:pet_link/pages/profile.dart';
import 'package:pet_link/shared/bottom_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          Home(),
          Adoption(),
          Lost(),
          Profile(),
          NotificationPage()
        ],
      ),
      bottomNavigationBar: BottomNav(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      )
    );
  }
}
