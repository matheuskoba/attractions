import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Meu Primeiro App',
      home: MyHomePage(title: 'Meu Primeiro App')
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _countFavorite = 3891;
  bool favorite = false;
  get key => null;

  void _favorite(){
    setState(() {
      if(favorite){
        favorite = false;
        _countFavorite -= 1;
      }else{
        _countFavorite += 1;
        favorite = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(widget.title),
        )
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              key: key,
              child: const Image(
                image: AssetImage('assets/caribe2.jpg')
              )
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            key: key,
                            child: const Text('Kotlin', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),)
                        ),
                        Container(
                            key: key,
                            child: const Text('Ilha, Caribe', style: TextStyle(fontSize: 16, color: Colors.grey),)
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        key: key,
                        child: IconButton(
                          onPressed: _favorite,
                          icon: (favorite
                              ? const Icon(Icons.star)
                              : const Icon(Icons.star_border)),
                          color: Colors.yellow,
                        )
                      ),
                      Container(
                        key: key,
                        child: Text(_countFavorite.toString()),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              key: key,
              child: Row(
                children: [
                  Button(text: 'Ligar', icon: Icons.call, action: (){},),
                  Button(text: 'Mapa', icon: Icons.location_on, action: (){}),
                  Button(text: 'Compartilhar', icon: Icons.share, action: (){})
                ]
              )
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: const Center(
                child: Text('O Caribe (português brasileiro e português europeu),[5] também chamado Caraíbas (apenas em português europeu) e América Caribenha, é uma região do continente americano formada pelo Mar do Caribe, suas ilhas e Estados insulares. Também é chamado de Antilhas ou Índias Ocidentais, nome originado pela crença inicial europeia de que o continente americano fosse a Índia (o termo "ocidentais" foi, posteriormente, adicionado para distingui-las da região da Índia "verdadeira"). Os nascidos nas ilhas do Caribe são denominados caribenhos.')
              ),
            )
          ],
        ),
      )
    );
  }
}

class Button extends StatelessWidget {
  const Button({Key? key, required this.text, required this.icon, required this.action}) : super(key: key);

  final String text;
  final IconData icon;
  final Function action;

  @override
  Widget build(BuildContext context){
    return Expanded(
        child: TextButton(
            onPressed: action(),
            child: Column(
              children: [
                Icon(icon, color: Colors.blue),
                Text(text)
              ],
            )
        )
    );
  }
}