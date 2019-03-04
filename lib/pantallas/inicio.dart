import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:home_sgb_demo/iconos/iconos.dart' as customIcons;


class Inicio extends StatelessWidget {
  Widget build(BuildContext context) {

        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.indigo[300]));

    return new SafeArea(
        child: Scaffold(
          body: MenuBody(),
        ),
       
    );
        
  }
}

class MenuBody extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return  Container(
            padding: EdgeInsets.only(top: 220, bottom: 10, right: 10, left: 10),
            decoration: BoxDecoration(
                color: Colors.white70,

                image: DecorationImage(
                    image: AssetImage(
                      'assets/top.jpg'),
                    alignment: Alignment.topCenter),
                    ),
                    
           
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(40.0),
              crossAxisSpacing: 65.0,
              mainAxisSpacing: 65.0,
              crossAxisCount: 2,

              children: <Widget>[
                
                //MOVIMIENTOS EN BOLSA
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: <Widget>[
                  Flexible(
                    child:   RawMaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/bolsa");
                    },
                    child: new Icon(
                      customIcons.MyFlutterApp.money,
                      color: Colors.white,
                      size: 50.0,
                    ),
                    shape: new CircleBorder(),
                    elevation: 2.0,
                    fillColor: Colors.indigo[700],
                    padding: const EdgeInsets.all(20.0),
                  ),
                  flex: 5,
                  ),
                  Flexible(
                    child:Padding(padding: EdgeInsets.only(top: 8),
                    child: Text("Movimientos en Bolsa",textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.indigo[700],fontSize: 16),)
                    ),
                    
                    flex: 1,
                  )
                  ],        
                ),
                
                //MOVIMIENTOS EN FONDOS
                  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: <Widget>[
                  Flexible(
                    child:   RawMaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/fondos");
                    },
                    child: new Icon(
                      customIcons.MyFlutterApp.chart_bars,
                      color: Colors.white,
                      size: 50.0,
                    ),
                    shape: new CircleBorder(),
                    elevation: 2.0,
                    fillColor: Colors.indigo[700],
                    padding: const EdgeInsets.all(20.0),
                  ),
                  flex: 5,
                  ),
                  
                   Flexible(
                    child:Padding(padding: EdgeInsets.only(top: 8),
                    child: Text("Movimientos en Fondos",textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.indigo[700],fontSize: 16),)
                    ),    
                    flex: 1,
                  )
                  ],  
                                 
                ),

              //MOVIMIENTOS CONSOLIDADOS
               Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: <Widget>[
                  Flexible(
                    child:   RawMaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/consolidados");
                    },
                    child: new Icon(
                      customIcons.MyFlutterApp.database_1,
                      color: Colors.white,
                      size: 50.0,
                    ),
                    shape: new CircleBorder(),
                    elevation: 2.0,
                    fillColor: Colors.indigo[700],
                    padding: const EdgeInsets.all(20.0),
                  ),
                  flex: 5,
                  ),
                 Flexible(
                    child:Padding(padding: EdgeInsets.only(top: 8),
                    child: Text("Movimientos Consolidados",textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.indigo[700],fontSize: 16),)
                    ),
                    
                    flex: 1,
                  )
                  ],  
                                 
                ),

                //ESTADO DE CUENTA 
             Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: <Widget>[
                  Flexible(
                    child:   RawMaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/cuenta");
                    },
                    child: new Icon(
                      customIcons.MyFlutterApp.book,
                      color: Colors.white,
                      size: 50.0,
                    ),
                    shape: new CircleBorder(),
                    elevation: 2.0,
                    fillColor: Colors.indigo[700],
                    padding: const EdgeInsets.all(20.0),
                  ),
                  flex: 5,
                  ),
                   Flexible(
                    child:Padding(padding: EdgeInsets.only(top: 8),
                    child: Text("Estado de cuenta",textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.indigo[700],fontSize: 16),)
                    ),
                    
                    flex: 1,
                  )
                  ],  
                                 
                ),
             
              ],
            )
            
           
            );
  }

  }
