import 'package:app_flutter_music_styles/menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const NiverPag());
}

class NiverPag extends StatelessWidget {
  const NiverPag({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text('Aniversário de São Paulo'),
          foregroundColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 81, 81, 81),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'img/niverSP.jpg',
                width: MediaQuery.of(context).size.width,
                height: 170,
              ),
              const SizedBox(height: 20),
              const Text(
                'São Paulo, a cidade que nunca dorme, está pronta para celebrar mais um aniversário. No dia 25 de janeiro, as ruas se enchem de cores e alegria para comemorar o dia em que essa metrópole vibrante foi fundada em 1554. Os paulistanos se unem nessa data especial para celebrar a história, os valores e as conquistas dessa grande cidade. São Paulo é conhecida por sua rica cultura, abrigando museus, teatros e galerias de arte renomadas.',
                style: TextStyle(fontSize: 20, fontFamily: 'Times New Roman', color: Color.fromARGB(255, 255, 255, 255)),
                textAlign: TextAlign.justify,
                
              ),
              const SizedBox(height: 20),
        FloatingActionButton(
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
            ],
          ),
        ),
      ),
    );
  }
}