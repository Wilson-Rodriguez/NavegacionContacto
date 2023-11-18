import 'package:flutter/material.dart';
import 'package:contacto/routes.dart';

void main() {
  runApp(const ListaContactos());
}
final List<Map<String, dynamic>> contactos = [
  {'Nombre': 'Aaron', 'Telefono': '3344-2112', 'Correo': 'aaron42@gmail.com'},
  {'Nombre': 'Alex', 'Telefono': '9475-2162', 'Correo': 'wonder@yahoo.com'},
  {'Nombre': 'Berry', 'Telefono': '3488-9201', 'Correo': 'Blackberry@gmail.com'},
  {'Nombre': 'Carlos', 'Telefono': '9391-7030', 'Correo': 'Carlitos1978@gmail.com'},
  {'Nombre': 'Cessy', 'Telefono': '97949263', 'Correo': 'char@hotmail.com'},
  {'Nombre': 'Daniel', 'Telefono': '9399-3403', 'Correo': 'dannytastico@gmail.com'},
  {'Nombre': 'Edwin', 'Telefono': '3992-7424', 'Correo': 'edwinmaster@gmail.com'},
  {'Nombre': 'Emmanuel', 'Telefono': '9790-3378', 'Correo': 'emmamontoya@gmail.com'},
  {'Nombre': 'Francisco', 'Telefono': '9433-1065', 'Correo': 'Fhernan@outlook.com'},
  {'Nombre': 'Hemerson', 'Telefono': '9774-7347', 'Correo': 'CadeteHemerson@gmail.com'},
  {'Nombre': 'Luis', 'Telefono': '3891-0103', 'Correo': 'Luiis23@hotmail.com'},
  {'Nombre': 'Mario', 'Telefono': '9817-3139', 'Correo': 'MarioMario100@gmail.com'},
  {'Nombre': 'Vicky', 'Telefono': '3642-6449', 'Correo': 'Victoria@hotmail.com'},
  {'Nombre': 'Wilson Javier', 'Telefono': '9614-2968', 'Correo': 'wmorazan22@gmail.com'},
  {'Nombre': 'Wilson Rodriguez', 'Telefono': '3634-2479', 'Correo': 'wilsonwar@yahoo.com'},
  {'Nombre': 'Yeny' , 'Telefono': '3662-4316', 'Correo': 'Yenybf@hotmail.com'},
  ];

class ListaContactos extends StatelessWidget {
  const ListaContactos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: ListView.builder(
        itemCount: contactos.length,
        itemBuilder: (context, index) => Card(
          child: ListTile(
            title: Text(contactos[index]['Nombre']),
            leading: CircleAvatar(child: Text(contactos[index]['Nombre'][0])),
            onTap: () => Navigator.of(context).pushNamed(Routes.contacto.name, 
            arguments: ArgumentosContacto(contactos[index]['Nombre'],  contactos[index]['Telefono'], contactos[index]['Correo']))
          )
        )
      )
    );
  }
}

class ArgumentosContacto {
  String nombre;
  String telefono;
  String correo;

  ArgumentosContacto(this.nombre, this.telefono, this.correo);
}

