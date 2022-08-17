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

  get key => null;

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
                        child: const Icon(Icons.star, size: 30, color: Colors.yellow)
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
                  Expanded(
                    child: TextButton(
                      onPressed: (){},
                      child: Column(
                        children: const [
                          Icon(Icons.call, color: Colors.blue),
                          Text('Ligar')
                        ],
                      )
                    )
                  ),
                  Expanded(
                    child: TextButton(
                        onPressed: (){},
                        child: Column(
                          children: const [
                            Icon(Icons.location_on, color: Colors.blue),
                            Text('Mapa')
                          ],
                        )
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                        onPressed: (){},
                        child: Column(
                          children: const [
                            Icon(Icons.share, color: Colors.blue),
                            Text('Compartilhar')
                          ],
                        )
                    ),
                  )
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

//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }


// _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }