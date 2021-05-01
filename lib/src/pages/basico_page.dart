import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo    = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _crearImagen(),
            _crearTitulo(),
            _crearAcciones(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            SizedBox(height: 30.0,)
          ],
        ),
      )
    );
  }

  Widget _crearImagen(){
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage('https://iso.500px.com/wp-content/uploads/2014/06/W4A2827-1.jpg'),
        height: 250.0,
        fit: BoxFit.cover,
        ),
    );
  }

  Widget _crearTitulo(){
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Text('Roca en el mar', style: estiloTitulo),
                  SizedBox(height: 7.0),
                  Text('Un mar en El Salvador', style: estiloSubTitulo)

                ],
              ),
            ),
            Icon(Icons.star, color: Colors.red, size: 30.0),
            Text('41', style: TextStyle(fontSize: 20.0))

          ],
        ),
      ),
    );
  }

  Widget _crearAcciones(){

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[

        _accion(Icons.call, 'Call'),
        _accion(Icons.near_me, 'Send'),
        _accion(Icons.share, 'Share'),

      ],
    );
  }

  Widget _accion(IconData icon, String texto){

    return Column(
      children: [
        Icon(icon, color: Colors.blue, size: 40.0 ),
        SizedBox(height: 5.0,),
        Text(texto.toUpperCase(), style: TextStyle(fontSize: 15.0, color: Colors.blue))
      ]);

  }

  Widget _crearTexto(){
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean laoreet consectetur scelerisque. Nullam venenatis, ante non volutpat facilisis, eros lorem sollicitudin velit, sit amet vulputate risus augue et magna. Duis fermentum, nisl sed finibus porta, nisl tellus molestie libero, vitae venenatis nisi dui a felis. Vivamus faucibus gravida tortor. Fusce a orci quis urna dictum blandit ac at diam. Integer diam ipsum, porta et volutpat eget, ullamcorper id justo.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}