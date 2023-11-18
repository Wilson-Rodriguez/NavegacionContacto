import "package:flutter/material.dart";
import 'package:contacto/contacto.dart';
import 'package:contacto/lista_contactos.dart';

enum Routes {ListaContactos, contacto}


class MyRoutes {
  static final routes = {
    Routes.contacto.name: (BuildContext context) => Contacto(),
    Routes.ListaContactos.name: (BuildContext context) => ListaContactos(),
  }; 
}