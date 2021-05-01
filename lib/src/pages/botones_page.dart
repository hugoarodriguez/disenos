import 'package:flutter/material.dart';

import 'dart:math';
import 'dart:ui';

class BotonesPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos(),
                _botonesRedondeados(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  Widget _fondoApp(){
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ]
        )
      ),
    );

    final cajaRosada = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        width: 360.0,
        height: 360.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80.0),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0)
            ]
          )
        ),
      )
    );

    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          top: -100.0,
          child: cajaRosada
        )
      ],
    );
  }

  Widget _titulos(){

    return SafeArea(
      child: Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Classify transaction', style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold)),
            SizedBox(height: 10.0),
            Container(
              width: 250.0,
              child: Text('Classify this transaction into a particular category', style: TextStyle(color: Colors.white, fontSize: 18.0))
            )
          ]
        ),
      ),
    );

  }

  Widget _bottomNavigationBar(){
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Color.fromRGBO(55, 57, 84, 1.0),
      selectedIconTheme: IconThemeData(color: Colors.pinkAccent),
      iconSize: 30.0,
      unselectedIconTheme: IconThemeData(color: Color.fromRGBO(116, 117, 152, 1.0)),
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today_rounded),
          label: 'Hola'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bar_chart_rounded),
          label: 'Hola'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle_rounded),
          label: 'Hola'
        ),
      ],
    );
  }

  Widget _botonesRedondeados(){

    return Table(
      children: [
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.blue, Icons.border_all, 'General'),
            _crearBotonRedondeado(Colors.purpleAccent, Icons.directions_bus_rounded, 'Transport'),
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.pink[300], Icons.shopping_bag_rounded, 'Shopping'),
            _crearBotonRedondeado(Colors.orange[300], Icons.receipt_rounded, 'Bills'),
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.blueAccent, Icons.movie_rounded, 'Entertainment'),
            _crearBotonRedondeado(Colors.green, Icons.local_grocery_store_rounded, 'Grocery'),
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.red, Icons.collections, 'Photos'),
            _crearBotonRedondeado(Colors.teal, Icons.help_outline_rounded, 'Help'),
          ]
        ),
      ],
    );

  }

  Widget _crearBotonRedondeado(Color color, IconData icon, String texto){

    return Padding(
      padding: EdgeInsets.all(15.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            height: 180.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20.0)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: color,
                  radius: 35.0,
                  child: Icon(icon, color: Colors.white, size: 30.0),
                ),
                Text(texto, style: TextStyle(color: color, fontSize: 20.0),)
              ],
            ),
          ),
        ),
      ),
    );

  }
}