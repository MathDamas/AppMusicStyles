import 'package:app_flutter_music_styles/menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(historiaPag());
}

class historiaPag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text('Aniversário de São Paulo'),
          foregroundColor: Colors.white,
          backgroundColor: Color.fromARGB(255, 81, 81, 81),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'img/historiaSP.jpg',
                width: MediaQuery.of(context).size.width,
                height: 170,
              ),
              const SizedBox(height: 20),
              const Text(
                'A história de São Paulo remonta a 1554, quando a cidade foi fundada pelos jesuítas com o objetivo de catequizar os índios locais. Ao longo dos séculos, São Paulo passou por transformações significativas, tornando-se uma das maiores metrópoles do mundo. A cidade cresceu rapidamente durante o ciclo do café, no final do século XIX, impulsionando seu desenvolvimento econômico.',
                style: TextStyle(fontSize: 20, fontFamily: 'Times New Roman', color: Color.fromARGB(255, 255, 255, 255)),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MenuPag()),
                  );
                },
                child: const Text('Voltar',
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                ),                
              ),
            ],
          ),
        ),
      ),
    );
  }
}