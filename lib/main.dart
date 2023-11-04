// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: BackButton(color: Colors.black),           
          ),
        body: SafeArea(
          child: Column(
            children: const [
              CircleAvatar(
                backgroundImage: AssetImage('assets/icon.png'),
                radius: 50
              ), 
              SizedBox(width: double.infinity, height: 50),
              Text('Pascualillo', style: TextStyle(fontSize: 20)),
              Divider(color: Colors.grey),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(children: [Icon(Icons.phone), Text('Llamar')]),
                Column(children: [Icon(Icons.message), Text('Mensaje de Texto')]),
                Column(children: [Icon(Icons.videocam), Text('Video')]),       
              ]),
              Divider(color: Colors.grey),
              Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Text('Informacion de contacto'),
                    ),
                    ListTile(
                      title: Text('+504 9902-9311'),
                      subtitle: Text('Celular'),
                      leading: Icon(Icons.phone),
                      trailing: Row(mainAxisSize: MainAxisSize.min, 
                      children: [
                        Icon(Icons.message),
                        Icon(Icons.videocam)
                      ]),

                    ),
                    ListTile(
                      title: Text('Enviar mensaje a +504 9902-9311'),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/whatsapp.png'),
                      )),
                    ListTile(
                    title: Text('Llamar a +504 9902-9311'),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/whatsapp.png'),
                    )),
                    ListTile(
                    title: Text('Videollamar a +504 9902-9311'),
                    leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/whatsapp.png'),
                    )),
                    ListTile(
                    title: Text('Mensaje a +50499029311'),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/telegram.png'),
                    )),
                    ListTile(
                    title: Text('Llamada de voz al +50499029311'),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/telegram.png'),
                    )),
                    ListTile(
                    title: Text('Videollamada al +50499029311'),
                    leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/telegram.png'),
                    )),
                                                   
                  ]

                ))
            ]
            )
          )
        )
    );
  }
}