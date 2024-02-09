import 'package:flutter/material.dart';
import 'package:cinemax_jj/pagina1.dart';
import 'package:cinemax_jj/comida.dart';
import 'package:cinemax_jj/revision.dart';
import 'package:cinemax_jj/tickets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CineMax',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    ScreenHome(),
    ScreenTicket(),
    ScreenComida(),
    ScreenRevision()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: Container(
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          selectedItemColor: Colors.red.shade900,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.confirmation_number_sharp),
              label: 'Tickets',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.fastfood),
              label: 'Comida',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.check),
              label: 'Revision',
            ),
          ],
        ),
      ),
    );
  }
}
