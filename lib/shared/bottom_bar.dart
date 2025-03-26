import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      selectedItemColor: const Color.fromARGB(255, 114, 64, 253),
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.pets),
          label: 'Adopción',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.location_pin),
          label: 'Perdidos',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Perfil',
        ),
      ],
    );
  }
}
