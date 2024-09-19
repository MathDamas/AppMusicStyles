import 'package:app_flutter_music_styles/estilos.dart';
import 'package:app_flutter_music_styles/eventos.dart';
import 'package:app_flutter_music_styles/historia.dart';
import 'package:app_flutter_music_styles/main.dart';
import 'package:app_flutter_music_styles/niver.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MenuPag());
}

// COISAS DA TELA DE MENU

// Define a classe MenuPag
class MenuPag extends StatelessWidget {
  const MenuPag({super.key});

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
          // Define o título da AppBar com um texto
          title: const Text('Menu'),
          // Define a cor do texto da AppBar como branco
          foregroundColor: Colors.white,
          // Define a cor de fundo da AppBar
          backgroundColor: const Color.fromARGB(255, 81, 81, 81),
        ),
        // Corpo do Scaffold, centraliza o widget filho
        body: Center(
          // Define um Container para controlar as dimensões do GridView
          child: SizedBox(
            width: 300, // Largura do Container
            height: 300, // Altura do Container
            // Define um GridView com 2 colunas
            child: GridView.count(
              crossAxisCount: 2, // Número de colunas
              // Lista de widgets filhos (botões)
              children: [
                // Primeiro botão
                ElevatedButton(
                  // Define a ação ao pressionar o botão (vazio)
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const NiverPag()),
                    );
                  },
                  // Define o estilo do ElevatedButton
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, // Cor do texto
                      backgroundColor: const Color.fromARGB(169, 249, 54, 10), // Cor de fundo
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30), // Bordas arredondadas
                      ),
                      textStyle: const TextStyle(
                        fontSize: 20, // Tamanho da fonte
                      )),
                  // Texto do botão
                  child: const Text("Aniversário"),
                ),
                // Segundo botão
                ElevatedButton(
                  // Define a ação ao pressionar o botão (vazio)
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HistoriaPag()),
                    );
                  },
                  // Define o estilo do ElevatedButton
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(169, 229, 31, 209), // Cor de fundo
                      foregroundColor: Colors.white, // Cor do texto
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30), // Bordas arredondadas
                      ),
                      textStyle: const TextStyle(
                        fontSize: 20, // Tamanho da fonte
                      )),
                  // Texto do botão
                  child: const Text("História"),
                ),
                // Terceiro botão
                ElevatedButton(
                  // Define o estilo do ElevatedButton
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(169, 24, 171, 136), // Cor de fundo
                      foregroundColor: Colors.white, // Cor do texto
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30), // Bordas arredondadas
                      ),
                      textStyle: const TextStyle(
                        fontSize: 20, // Tamanho da fonte
                      )),
                  // Texto do botão
                  child: const Text("Estilos"),
                  // Define a ação ao pressionar o botão
                  onPressed: () {
                    // Navega para a página EstilosPag e substitui a rota atual
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => const EstilosPag()),
                    );
                  },
                ),
                // Quarto botão
                ElevatedButton(
                  // Define a ação ao pressionar o botão
                  onPressed: () {
                    // Navega para a página EventosPag
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EventosPag()),
                    );
                  },
                  // Define o estilo do ElevatedButton
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, // Cor do texto
                      backgroundColor: const Color.fromARGB(169, 41, 38, 199), // Cor de fundo
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30), // Bordas arredondadas
                      ),
                      textStyle: const TextStyle(
                        fontSize: 20, // Tamanho da fonte
                      )),
                  // Texto do botão
                  child: const Text("Eventos"),
                ),
                // Quinto botão
                ElevatedButton(
                  // Define o estilo do ElevatedButton
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black, // Cor do texto
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30), // Bordas arredondadas
                      ),
                      textStyle: const TextStyle(fontSize: 20)), // Tamanho da fonte
                  // Define a ação ao pressionar o botão
                  onPressed: () {
                    // Navega para a página MainApp
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MainApp()),
                    );
                  },
                  // Texto do botão
                  child: const Text("Voltar"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}