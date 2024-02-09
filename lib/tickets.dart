import 'package:flutter/material.dart';

class ScreenTicket extends StatefulWidget {
  @override
  _ScreenTicketState createState() => _ScreenTicketState();
}

class _ScreenTicketState extends State<ScreenTicket> {
  final List<Movie> movies = [
    Movie(
      imageUrl: 'https://pics.filmaffinity.com/Madame_Web-392004109-large.jpg', 
      title: 'Pobres criaturas', 
      description: 'Descripción de la película 1', 
    ),
    Movie(
      imageUrl: 'https://pics.filmaffinity.com/poor_things-235700969-large.jpg', // Reemplaza esta URL con una URL válida para la segunda imagen
      title: 'Madame Web',
      description: 'Descripción de la película 2',
    ),
  ];

  // Índice de la película seleccionada
  int? selectedMovieIndex;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: movies.length,
      itemBuilder: (context, index) {
        final movie = movies[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                //width: 100, // Ancho de la imagen
                //height: 100, // Alto de la imagen
                child: Image.network(
                  movie.imageUrl,
                  fit: BoxFit.cover, // Ajustar la imagen para cubrir el espacio
                ),
              ), // Imagen de la película
              SizedBox(width: 10), // Espacio entre la imagen y el checkbox
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      movie.title, 
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ), // Título de la película
                    Text(movie.description), // Descripción de la película
                  ],
                ),
              ),
              Checkbox(
                value: selectedMovieIndex == index, 
                onChanged: (value) {
                  setState(() {
                    if (value!) {
                      selectedMovieIndex = index; 
                    } else {
                      selectedMovieIndex = null; 
                    }
                  });
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

// Clase para representar una película
class Movie {
  final String imageUrl; 
  final String title; 
  final String description; 

  Movie({required this.imageUrl, required this.title, required this.description});
}
