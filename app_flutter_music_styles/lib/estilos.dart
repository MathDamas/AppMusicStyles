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
      const EstilosMusc('img/funk3.avif', 'Funk', '01/01/2001', 'MC sla');
  EstilosMusc h = const EstilosMusc('', 'HipHop', '69/69/6969', 'Deide Costas');
  EstilosMusc s =
      const EstilosMusc('', 'Samba', '11/09/2001', 'Zeca Pagodinho');
  EstilosMusc t = const EstilosMusc('', 'Trap', '06/05/2021', 'MatueKKKKKK');
  EstilosMusc r = const EstilosMusc('', 'Rock', '11/07/2006', 'Matheus Gama');

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
