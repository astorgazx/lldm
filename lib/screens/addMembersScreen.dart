import 'package:flutter/material.dart';
import 'package:lldm/model/model.dart';


final myDbModelo  =  myDbModel();

class addMembersScreen extends StatelessWidget {
  const addMembersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {s
    return Scaffold(
      appBar: AppBar(title: const Text("Agregar Miembro"),),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Ingrese los datos del miembro a agregar',
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nombre',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Apellido',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Telefono',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Direccion',
              ),
            ),
            ElevatedButton(onPressed:(){
              // Agregar miembro en la base de datos
              final miembro = Miembro(
                    nombre: nombreController.text,
                    apellido: apellidoController.text,
                    telefono: telefonoController.text,
                    email: emailController.text,
                    direccion: direccionController.text,
                  );
                  myDbModel.miembroModel!.save(miembro);
            } , child: Text("Agregar Miembro"))
            
          ],
        ),
      ),
    );
  }
}