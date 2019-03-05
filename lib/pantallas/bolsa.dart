import 'package:flutter/material.dart';

class Bolsa extends StatelessWidget 
{
  Widget build(BuildContext context)
  {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
            title: Text("Movimientos en Bolsa ",
            textAlign: TextAlign.center),
            backgroundColor: Color.fromRGBO(23, 17, 85, 1),
      ),
     
    );
  }
}