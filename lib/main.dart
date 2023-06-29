// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_tiktok_ui_clone/ui_tiktok.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: const UIYikTok(),
        bottomNavigationBar: _BottomNav(),
      ),
    );
  }
}

class _BottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white24,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(bottom: 3.0),
            child: Image.asset('icons/inicio.png'),
          ),
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(bottom: 3.0),
            child: Image.asset('icons/tendencias.png'),
          ),
          label: 'Tendecias',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(bottom: 3.0),
            child: Image.asset('icons/plus.png'),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(bottom: 3.0),
            child: Image.asset('icons/bandeja.png'),
          ),
          label: 'Bandeja',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(bottom: 3.0),
            child: Image.asset('icons/yo.png'),
          ),
          label: 'Yo',
        ),
      ],
    );
  }
}
