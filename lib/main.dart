import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi aplicación',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gestion de Miembros'),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Bienvenido a la aplicación que deseas hacer',
            ),ElevatedButton(onPressed:(){
              // Abrir la pantalla de listar miembros
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ListarMiembros()));
            } , child: const Text("Agregar Miembro"))
          ],
        )
      ),
    );
  }
  
  ListarMiembros() {}

  

 
}
