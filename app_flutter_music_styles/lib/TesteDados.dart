// ignore: file_names



import 'package:app_flutter_music_styles/classeEstilos.dart';
import 'package:flutter/material.dart';

void segundapag() {
  runApp(const TesteDados());
}

class TesteDados extends StatelessWidget {
  const TesteDados({super.key});

  @override
  Widget build(BuildContext context) {
    final e = ModalRoute.of(context)!.settings.arguments as EstilosMusc;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        title: const Text('Sobre'),
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 81, 81, 81),
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              e.imagemMusc,
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              e.nomeMusc,
              style: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'Times New Roman',
                  color: Color.fromARGB(255, 255, 255, 255)),
            ),
            Text(
              e.dataMusc,
              style: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'Times New Roman',
                  color: Color.fromARGB(255, 255, 255, 255)),
            ),
            Text(
              e.exemploMusc,
              style: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'Times New Roman',
                  color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ],
        ),
      ),
    );
  }
}
