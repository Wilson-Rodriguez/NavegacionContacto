import 'package:contacto/lista_contactos.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Contacto());
}

class Contacto extends StatefulWidget {
  const Contacto({super.key});

  @override
  State<Contacto> createState() => _ContactoState();
}

class _ContactoState extends State<Contacto> {
  @override
  Widget build(BuildContext context) {
    var contacto = ModalRoute.of(context)!.settings.arguments as ArgumentosContacto;

    return Scaffold(
          appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: const BackButton(color: Colors.black),           
          ),
        body: SafeArea(
          child: Column(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/icon.png'),
                radius: 50
              ), 
              const SizedBox(width: double.infinity, height: 50),
              Text(contacto.nombre, style: const TextStyle(fontSize: 20)),
              const Divider(color: Colors.grey),
              const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(children: [Icon(Icons.phone), Text('Llamar')]),
                Column(children: [Icon(Icons.message), Text('Mensaje de Texto')]),
                Column(children: [Icon(Icons.videocam), Text('Video')]),       
              ]),
              const Divider(color: Colors.grey),
              Card(
                child: Column(
                  children: [
                    const ListTile(
                      title: Text('Informacion de contacto'),
                    ),
                    ListTile(
                      title: Text(contacto.telefono),
                      subtitle: const Text('Celular'),
                      leading: const Icon(Icons.phone),
                      trailing: const Row(mainAxisSize: MainAxisSize.min, 
                      children: [
                        Icon(Icons.message),
                        Icon(Icons.videocam)
                      ]),

                    ),
                    ListTile(
                      title: Text('Enviar mensaje a ${contacto.telefono}'),
                      leading: const CircleAvatar(
                      backgroundImage: AssetImage('assets/whatsapp.png'),
                      )),
                    ListTile(
                    title: Text('Llamar a ${contacto.telefono}'),
                    leading: const CircleAvatar(
                      backgroundImage: AssetImage('assets/whatsapp.png'),
                    )),
                    ListTile(
                    title: Text('Videollamar a ${contacto.telefono}'),
                    leading: const CircleAvatar(
                    backgroundImage: AssetImage('assets/whatsapp.png'),
                    )),
                    ListTile(
                    title: Text('Mensaje a ${contacto.telefono}'),
                    leading: const CircleAvatar(
                      backgroundImage: AssetImage('assets/telegram.png'),
                    )),
                    ListTile(
                    title: Text('Llamada de voz al ${contacto.telefono}'),
                    leading: const  CircleAvatar(
                      backgroundImage: AssetImage('assets/telegram.png'),
                    )),
                    ListTile(
                    title: Text('Videollamada al ${contacto.telefono}'),
                    leading: const CircleAvatar(
                    backgroundImage: AssetImage('assets/telegram.png'),
                    )),                                                 
                  ]

                ))
            ]
            )
          ));
  }
}

