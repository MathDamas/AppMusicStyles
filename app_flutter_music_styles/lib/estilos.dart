import 'package:app_flutter_music_styles/TesteDados.dart';
import 'package:app_flutter_music_styles/classeEstilos.dart';
import 'package:app_flutter_music_styles/menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EstilosPag());
}

// Define a classe EstilosPag
class EstilosPag extends StatefulWidget {
  // Construtor constante da classe EstilosPag, que aceita uma chave super.key
  const EstilosPag({super.key});

  // Sobrescreve o método createState para retornar uma instância de EstilosPag2
  @override
  State<EstilosPag> createState() => EstilosPag2();
}

class EstilosPag2 extends State<EstilosPag> {
  EstilosMusc f =
      const EstilosMusc('', 'Funk Brasileiro', 'Surgimento: Final da década de 60', 'Cantores: Anitta, Ludmilla e Kevinho');
  EstilosMusc h = const EstilosMusc('', 'HipHop Brasileiro', 'Surgimento: Em 1988', 'Cantores: Emicida, Rael e Karol Conká');
  EstilosMusc s =
      const EstilosMusc('', 'Samba', 'Surgimento: Início do Século 20', 'Cantores: Martinho da Vila, Alcione e Zeca Pagodinho');
  EstilosMusc t = const EstilosMusc('', 'Trap Brasileiro', 'Surgimento: Em 1999', 'Cantores: Matuê, Sidoka e Delacruz');
  EstilosMusc r = const EstilosMusc('', 'Rock Brasileiro', 'Surgimento: Década de 59', 'Cantores: Legião Urbana, Titâs e Pitty');

// Define a classe EstilosPag que herda de StatelessWidget

  // Sobrescreve o método build que constrói a interface do usuário
  @override
  Widget build(BuildContext context) {
    // Retorna um Scaffold, que é a estrutura básica de layout do Material Design
    return Scaffold(
      // Define a cor de fundo do Scaffold como preto
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      // Define uma AppBar na parte superior do Scaffold
      appBar: AppBar(
        // Define a cor do texto da AppBar como branco
        foregroundColor: Colors.white,
        // Define a cor de fundo da AppBar
        backgroundColor: const Color.fromARGB(255, 81, 81, 81),
        // Define o título da AppBar com um texto
        title: const Text('Estilos Musicais'),
      ),
      // Corpo do Scaffold, centraliza o widget filho
      body: Center(
        // Define uma coluna de widgets, centralizada verticalmente
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Primeiro botão em um Container
            Container(
              width: 300, // Largura do botão
              height: 50, // Altura do botão
              child: ElevatedButton(
                // Define a ação ao pressionar o botão (vazio)
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TesteDados(),
                          settings: RouteSettings(
                            arguments: f,
                          )));
                },
                // Define o estilo do ElevatedButton
                style: ButtonStyle(
                  // Define a cor de fundo do botão
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 244, 59, 46)),
                  // Define a cor do texto do botão
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                // Texto do botão
                child: const Text('Funk'),
              ),
            ),
            // Espaçamento entre os botões
            const SizedBox(height: 40),
            // Segundo botão em um Container
            Container(
              width: 300, // Largura do botão
              height: 50, // Altura do botão
              child: ElevatedButton(
                // Define a ação ao pressionar o botão (vazio)
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TesteDados(),
                      settings: RouteSettings(
                        arguments: h,
                      ),
                    ),
                  );
                  // Abre segundo estilo musical
                },
                // Define o estilo do ElevatedButton
                style: ButtonStyle(
                  // Define a cor de fundo do botão
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(71, 128, 181, 63)),
                  // Define a cor do texto do botão
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                // Texto do botão
                child: const Text('Hip-hop'),
              ),
            ),
            // Espaçamento entre os botões
            const SizedBox(height: 40),
            // Terceiro botão em um Container
            Container(
              width: 300, // Largura do botão
              height: 50, // Altura do botão
              child: ElevatedButton(
                // Define a ação ao pressionar o botão (vazio)
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TesteDados(),
                      settings: RouteSettings(
                        arguments: s,
                      ),
                    ),
                  );
                  // Abre terceiro estilo musical
                },
                // Define o estilo do ElevatedButton
                style: ButtonStyle(
                  // Define a cor de fundo do botão
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(88, 59, 11, 224)),
                  // Define a cor do texto do botão
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                // Texto do botão
                child: const Text('Samba'),
              ),
            ),
            // Espaçamento entre os botões
            const SizedBox(height: 40),
            // Quarto botão em um Container
            Container(
              width: 300, // Largura do botão
              height: 50, // Altura do botão
              child: ElevatedButton(
                // Define a ação ao pressionar o botão (vazio)
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TesteDados(),
                      settings: RouteSettings(
                        arguments: t,
                      ),
                    ),
                  );
                  // Abre quarto estilo musical
                },
                // Define o estilo do ElevatedButton
                style: ButtonStyle(
                  // Define a cor de fundo do botão
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(83, 212, 99, 199)),
                  // Define a cor do texto do botão
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                // Texto do botão
                child: const Text('Trap'),
              ),
            ),
            // Espaçamento entre os botões
            const SizedBox(height: 40),
            // Quinto botão em um Container
            Container(
              width: 300, // Largura do botão
              height: 50, // Altura do botão
              child: ElevatedButton(
                // Define a ação ao pressionar o botão (vazio)
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TesteDados(),
                      settings: RouteSettings(
                        arguments: r,
                      ),
                    ),
                  );
                  // Abre quinto e último estilo musical
                },
                // Define o estilo do ElevatedButton
                style: ButtonStyle(
                  // Define a cor de fundo do botão
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(41, 101, 105, 102)),
                  // Define a cor do texto do botão
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                // Texto do botão
                child: const Text('Rock'),
              ),
            ),
            // Espaçamento entre os botões
            const SizedBox(height: 40),
            // Botão de voltar em um Container
            Container(
              width: 300, // Largura do botão
              height: 50, // Altura do botão
              child: ElevatedButton(
                // Define o estilo do ElevatedButton
                style: ElevatedButton.styleFrom(
                  // Define a cor do texto do botão
                  foregroundColor: Colors.black,
                  // Define as bordas do botão como arredondadas
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  // Define o estilo do texto do botão
                  textStyle: const TextStyle(fontSize: 14),
                ),
                // Define a ação ao pressionar o botão
                onPressed: () {
                  // Navega para a página MenuPag
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MenuPag()),
                  );
                },
                // Texto do botão
                child: const Text("Voltar"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
