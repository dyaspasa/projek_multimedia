import 'package:flutter/material.dart';
import 'package:projek_multimedia/evaluasi.dart';
import 'package:projek_multimedia/home.dart';
import 'package:projek_multimedia/materi.dart';
import 'package:projek_multimedia/profil.dart';
import 'package:projek_multimedia/soal.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int selected = 0;

  bottom(int index) {
    setState(() {
      selected = index;
    });
  }

  List<Widget> page = [
    Home(), Materi(), Soal(), Evaluasi(), Profil()
  ];

  List<String> title = [
    "Home", "Materi", "Soal", "Evaluasi", "Ringkasan"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(title: Text("${title[selected]}"),toolbarHeight: 71,shadowColor: Colors.black,elevation: 4,backgroundColor: Color(0xFFF5F5F5),centerTitle: true,),
      body: page[selected],
      bottomNavigationBar: 
        BottomNavigationBar(
          onTap: bottom,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.abc),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.abc),
                label: 'Materis',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.abc),
                label: 'Soal',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.abc),
                label: 'Evaluasi',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.abc),
                label: 'Ringkasan',
              ),
            ],
            unselectedItemColor: const Color(0xFFADABAE),
            selectedItemColor: const Color(0xFF8C34D1),
            showUnselectedLabels: true,
            currentIndex: selected,
          ),
    );
  }
}