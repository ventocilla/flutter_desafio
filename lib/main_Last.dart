import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Revenda App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: RevendaPage(),
    );
  }
}

List<Map> revendasList = [
  {
    'marca': 'Multimarcas',
    'nome': 'Unigas',
    'caracteristicas': {
      'nota': '4.5',
      'tempo medio': '30-45',
      'preco': '74,90'
    },},
  {
    'marca': 'Liquigas',
    'nome': 'Yama Gas Bom Pastor',
    'caracteristicas': {
      'nota': '4.6',
      'tempo medio': '30-45',
      'preco': '72,00'
    },},
  {
    'marca': 'Multimarcas',
    'nome': 'Unigas',
    'caracteristicas': {
      'nota': '4.8',
      'tempo medio': '30-50',
      'preco': '80,00'
    },},
  {
    'marca': 'Multimarcas',
    'nome': 'Mundial Gas',
    'caracteristicas': {
      'nota': '4.7',
      'tempo medio': '30-45',
      'preco': '82,90'
    },},
];

class RevendaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Escolha uma Revenda'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.add), onPressed: () {}),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.center,
              child: Text('?', style: TextStyle(fontSize: 30)),
            ),
          ),
        ],
      ),
      body:  Column(
        children: <Widget>[
          Header(),
          //revendasList.map((e) => null).toList();
          /*
          Column(
            children: <Widget>[
              SizedBox(height: 20),
              Card(),
              SizedBox(height: 20),
              Card(),
              SizedBox(height: 20),
              Card(),
              SizedBox(height: 20),
              Card(),
            ],
          ),
          */
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      height: 100,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Butijões de 13kg em', style: TextStyle(color: Colors.grey)),
              Text('Av. Paulista, 1001', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Paulista, São Paulo, SP',
                  style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
         Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
           Icon(Icons.location_on, color: Colors.blue),
           SizedBox(height: 5),
           Text('MUDAR', style: TextStyle(color: Colors.blue)),
         ],)
        ],
      ),
    );
  }
}

class Card extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      color: Colors.white,
      child: Container(
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RotatedBox(quarterTurns: -1, child: Text('Multimarcas'),),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(child: Text('Unigas')),
                      Container(
                        height: 25,
                        color: Colors.orangeAccent,
                        child: Row(
                          children: <Widget>[
                          Icon(Icons.label, color: Colors.white, size: 16),
                          Text('Melhor Preço', style: TextStyle(color: Colors.white, fontSize: 14)),
                        ],),
                      )
                    ],),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text('Nota', style: TextStyle(color: Colors.grey)),
                          Row(
                            children: <Widget>[
                              Text('4.5', style: TextStyle(fontWeight: FontWeight.bold)),
                              Icon(Icons.star, color: Colors.yellow,),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text('Tempo Medio', style: TextStyle(color: Colors.grey)),
                          Text('30-45 min', style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text('Preço', style: TextStyle(color: Colors.grey)),
                          Text('74,90', style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}
