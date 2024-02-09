import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            '¡Bienvenido!',
            style: TextStyle(fontSize: 24.0),
          ),
          const SizedBox(height: 20.0), 
          Image.network(
            'https://media.istockphoto.com/id/1322463784/es/vector/cine-pantalla-blanca-en-el-cine-ilustraci%C3%B3n-vectorial.jpg?s=612x612&w=0&k=20&c=Zk2ozCYwoeR6HhAp1rPHD1slChCFIVQOiUlGwWU5dd8=', 
            height: 200.0, 
          ),
        ],
      ),
    );
  }
}