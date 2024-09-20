import 'package:app_flutter_music_styles/menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(EventosPag());
}

// Define a classe EventosPag
class EventosPag extends StatelessWidget {
  // Construtor da classe EventosPag com um parâmetro super.key
  EventosPag({super.key});

  // Lista final de strings que armazena os caminhos das imagens dos eventos
  final List<String> imagensEventos = [
    'img/funk1.jpg',
    'img/funk2.jpg',
    'img/hiphop1.jpg',
    'img/hiphop2.jpg',
    'img/samba1.jpg',
    'img/samba2.jpg',
    'img/trap1.jpg',
    'img/trap2.jpg',
    'img/rock1.jpg',
    'img/rock2.jpg',
  ];

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
          title: const Text('Lista de eventos'),
          // Define a cor do texto da AppBar como branco
          foregroundColor: Colors.white,
          // Define a cor de fundo da AppBar
          backgroundColor: const Color.fromARGB(255, 81, 81, 81),
        ),        
        // Corpo do Scaffold, define um GridView para mostrar as imagens
        body: 
        GridView.count(
          // Define o número de colunas do GridView
          crossAxisCount: 2,
          // Gera uma lista de widgets filhos com base no índice
          children: List.generate(10, (index) {
            return Center(
              // Exibe uma imagem centralizada com AssetImage
              child: Image(
                // Define a imagem a ser exibida a partir da lista de imagensEventos
                image: AssetImage(imagensEventos[index]),
                // Define como a imagem deve se ajustar ao espaço
                fit: BoxFit.cover,
                // Define a largura da imagem
                width: 300,
                // Define a altura da imagem
                height: 300,
              ),
            );
          }),          
        ),
        floatingActionButton: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MenuPag()),
                  );
                },
                child: const Text('Voltar',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                ),                
              ),              
      ),
    )
   // ))
    ;
  }
}