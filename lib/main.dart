import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Meu Local'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List locais = [
    "Beira",
    "Maputo",
    "Curitiba",
    "Rio de Janeiro",
    "Lisboa",
    "Chiomoio",
    "São Francisco",
    "Porto",
    "Washington"
  ];

  List<MaterialColor> colors = [
    Colors.orange,
    Colors.green,
    Colors.blue,
    Colors.red,
    Colors.pink,
  ];

  String _randomText = "";
  MaterialColor _randomColor = Colors.blue;

  void _atualizarTela() {
    print(_randomColor);
    setState(() {
      _randomText = locais[new Random().nextInt(locais.length)];
      _randomColor = colors[new Random().nextInt(colors.length)];
      print(_randomColor);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: _atualizarTela,
              child: Text('Clique'),
              color: _randomColor,
            ),
            Text(
              '$_randomText',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
