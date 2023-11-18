// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:contacto/routes.dart';

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
      initialRoute: Routes.ListaContactos.name,
      routes: MyRoutes.routes
    );
  }
}