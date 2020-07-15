import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
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
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  void initState() {
    super.initState();
    revendasList.forEach((element) {
      //print(element);
      //print(element['marca']);
      //print(element['caracteristicas']);
      print(element['caracteristicas']['nota']);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Hi'),),
    );
  }
}
