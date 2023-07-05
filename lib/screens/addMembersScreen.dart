import 'package:flutter/material.dart';
import 'package:lldm/model/model.dart';


class addMembersScreen extends StatefulWidget {
  const addMembersScreen({ Key? key }) : super(key: key);

  @override
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agregar Miembro'),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Ingrese los datos del miembro',
            ) ,
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nombre',
              ),
            ),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Apellido',
              ),
            ),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Telefono',
              ),
            ),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Direccion',
              ),
            ),
            ElevatedButton(onPressed:(){
              // Añadir registro a la base de datos

            } , child: const Text("Agregar Miembro"))
            
              @override
              State<StatefulWidget> createState() {
                // TODO: implement createState
                throw UnimplementedError();
              }
            }
            
              @override
              State<StatefulWidget> createState() {
                // TODO: implement createState
                throw UnimplementedError();
              }
            }