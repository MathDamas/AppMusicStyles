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
  // Construtor da classe MainApp, com um parâmetro super.key
  const MainApp({super.key});

  // Sobrescreve o método build que constrói a interface do usuário
  @override
  Widget build(BuildContext context) {
    // Retorna um MaterialApp, que é o widget raiz do aplicativo
    return MaterialApp(
      // Define a página inicial do aplicativo como um Scaffold
      home: Scaffold(
        // Define a cor de fundo do Scaffold como preto
        backgroundColor: Colors.black,
        // Define uma AppBar na parte superior do Scaffold
        appBar: AppBar(
          // Define o título da AppBar com um texto constante
          title: const Text('Bem vindo ao App!'),
          // Define a cor do texto da AppBar como branco
          foregroundColor: Colors.white,
          // Define a cor de fundo da AppBar
          backgroundColor: Color.fromARGB(255, 81, 81, 81),
        ),
        // Corpo do Scaffold, centraliza o widget filho
        body: Center(
          // Define um SizedBox para controlar as dimensões do botão
          child: SizedBox(
            width: 200, // Largura do botão
            height: 200, // Altura do botão
            // Define um ElevatedButton dentro do SizedBox
            child: ElevatedButton(
              // Define o estilo do ElevatedButton
              style: ElevatedButton.styleFrom(
                // Cor do texto do botão
                foregroundColor: Colors.white,
                // Cor de fundo do botão
                backgroundColor: const Color.fromARGB(82, 194, 209, 0),
                // Define a forma do botão com bordas arredondadas
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(70),
                ),
                // Define o estilo do texto do botão
                textStyle: const TextStyle(
                  fontSize: 20, // Tamanho da fonte do texto
                ),
              ),
              // Texto do botão
              child: const Text('Conhecer'),
              // Define a ação ao pressionar o botão
              onPressed: () {
                // Navega para a página MenuPag e substitui a rota atual
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => MenuPag()),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}