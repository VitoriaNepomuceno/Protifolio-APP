import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Segunda extends StatelessWidget {
  const Segunda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        shadowColor: Colors.white,
        title: Text(
          'Currículo',
          style: TextStyle(),
        ),
      ),
      body: Stack(
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
                'Currículo Vitoria Luiza Nepomuceno Nunes, profissional da área de Desenvolvimento. ',
                style: TextStyle(color: Colors.white, fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
          
          ),
          const SizedBox(height: 16),
          Container(
            color: Colors.black,
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Redes Sociais',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 12),
                InkWell(
                  onTap: () {
                    launchUrl(Uri.parse('https://www.linkedin.com/in/vitoria-luiza-nepomuceno-nunes-2a0a121a3/?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=ios_app'));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      FaIcon(FontAwesomeIcons.linkedin, color: Colors.white),
                      SizedBox(width: 8),
                      Text(
                        'Vitoria L. N. Nunes - LinkedIn',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                InkWell(
                  onTap: () {
                    launchUrl(Uri.parse('https://www.instagram.com/Vitoria_Desenvolvedora'));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      FaIcon(FontAwesomeIcons.instagram, color: Colors.white),
                      SizedBox(width: 8),
                      Text(
                        'Vitoria Desenvolvedora - Instagram',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Container(
            color: Colors.black,
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Projetos',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 12),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/jogo_da_velha');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.videogame_asset, color: Colors.white),
                      SizedBox(width: 8),
                      Text(
                        'Jogo da Velha em JS',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      ],
      ), //body
    ); //Scaffold
  }
}
