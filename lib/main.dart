import 'package:flutter/material.dart';
import 'pantallas/bolsa.dart';
import 'pantallas/fondos.dart';
import 'pantallas/consolidados.dart';
import 'pantallas/estadocuenta.dart';
import 'pantallas/inicio.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SGB Demo',
      theme: ThemeData(   
        primarySwatch: Colors.blue,
      ),
      routes: <String, WidgetBuilder>{
          "/inicio" : (BuildContext context) => Inicio(),
          "/bolsa":(BuildContext context) => Bolsa(),//Movimientos en bolsa
          "/fondos" : (BuildContext context) => Fondos(),//Movimientos en fondos
          "/consolidados" : (BuildContext context) => Consolidados(),//Movimientos consolidados
          "/cuenta" : (BuildContext context) => EstadoCuenta(),//Estado de cuenta SEDEVAL
        } ,
      home: Inicio()
    );
  }
}

