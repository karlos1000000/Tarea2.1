import 'package:flutter/material.dart';

class ContactoDetailPage extends StatelessWidget {
  final Map<String, dynamic> contacto;

  ContactoDetailPage({required this.contacto});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(contacto["nombre"]),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              child: Text(
                contacto["nombre"][0],
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              radius: 55,
            ),
            SizedBox(height: 20),
            Text(
              contacto["nombre"],
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text('Teléfono: ${contacto["telefono"]}'),
            Text('Correo: ${contacto["correo"]}'),
          ],
        ),
      ),
    );
  }
}
