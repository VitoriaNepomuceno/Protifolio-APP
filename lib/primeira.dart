import 'package:flutter/material.dart';



class Primeira extends StatelessWidget {
  const Primeira({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        shadowColor: Colors.white,
        title: const Text(
          'Informações',
        ),
      ),
      body:  Stack(
          children: [
          Positioned.fill(
            child: Image.asset(
              'assets/imagens/p1.jpg', // Caminho da imagem
              fit: BoxFit.cover,
            ),
          ),
        ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            color: Colors.black,
            padding: const EdgeInsets.all(16),
            child: const Center(
              child: Text(
                'Olá! Me chamo Vitoria L. N. Nunes, profissional da área de Desenvolvimento. '
                'Sou dedicada, proativa, comunicativa e estou em busca de novas oportunidades para crescer.',
                style: TextStyle(color: Colors.white, fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
          
          ),
          const SizedBox(height: 16),
          Container(
            color: Colors.black,
            padding: const EdgeInsets.all(16),
            child: const Text(
              'Tenho experiência com desenvolvimento de aplicações mobile(Flutter) e web. '
              'Busco sempre aprender novas tecnologias e me atualizar no mercado.',
              style: TextStyle(color: Colors.white, fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
          const SizedBox(height: 16),
          Container(
            color: Colors.black,
            padding: const EdgeInsets.all(16),
            child: const Text(
              'Além da área técnica, valorizo o trabalho em equipe, boa comunicação e a entrega de resultados com qualidade.'
              'Meu currículo está disponível para mais detalhes.',
              style: TextStyle(color: Colors.white, fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            child: const Text('Ir para Currículo',style: TextStyle(color: Colors.black, fontSize: 16),),
            onPressed: () {
              Navigator.pushNamed(context, '/segunda');
            },
          ),
        ],
      ),
      ],
    ),
    );
  }
}