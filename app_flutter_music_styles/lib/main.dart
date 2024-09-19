import 'package:app_flutter_music_styles/menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'App',
    home: MainApp(),
  ));
}

// COISAS DA TELA INICIAL

// Define a classe MainApp
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // Remova a cor de fundo definida no Scaffold
        // backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text('Bem vindo ao App!'),
          foregroundColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 81, 81, 81),
        ),
        body: Stack(
          children: [
            // Adiciona a imagem de fundo
            Positioned.fill(
              child: Image.asset(
                'img/inicio.gif', // Caminho da imagem na pasta assets
                fit: BoxFit.cover, // Ajusta a imagem para cobrir toda a tela
              ),
            ),
            // Adiciona o conteúdo acima da imagem de fundo
            Center(
              child: SizedBox(
                width: 200,
                height: 200,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color.fromARGB(82, 194, 209, 0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(70),
                    ),
                    textStyle: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  child: const Text('Conhecer'),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      // ignore: prefer_const_constructors
                      MaterialPageRoute(builder: (context) => MenuPag()),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}