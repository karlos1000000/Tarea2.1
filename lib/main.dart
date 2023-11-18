import 'package:flutter/material.dart';
import 'my_routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    contactos.sort((a, b) => a["nombre"].compareTo(b["nombre"]));

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.phone),
                title: Text(
                  'Crear contacto nuevo',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                onTap: () {},
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: contactos.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        child: Text(
                          contactos[index]["nombre"][0],
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      title: Text(contactos[index]["nombre"]),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ContactoDetailPage(contacto: contactos[index]),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<Map<String, dynamic>> contactos = [
  {"nombre": "Ana", "telefono": "9384923892", "correo": "ana@gmail.com"},
  {"nombre": "Alberto", "telefono": "5635635", "correo": "alberto@gmail.com"},
  {"nombre": "Alicia", "telefono": "65363456", "correo": "alicia@gmail.com"},
  {"nombre": "Adrián", "telefono": "245251", "correo": "adrian@gmail.com"},
  {
    "nombre": "Alejandro",
    "telefono": "784864764",
    "correo": "alejandro@gmail.com"
  },
  {"nombre": "Alba", "telefono": "965785832", "correo": "alba@gmail.com"},
  {"nombre": "Andrés", "telefono": "35636265", "correo": "andres@gmail.com"},
  {"nombre": "Angela", "telefono": "46747586", "correo": "angela@gmail.com"},
  {"nombre": "Astrid", "telefono": "876567634", "correo": "antonio@gmail.com"},
  {"nombre": "Armando", "telefono": "76868758", "correo": "armando@gmail.com"},
  {"nombre": "Aurora", "telefono": "57854356345", "correo": "aurora@gmail.com"},
  {"nombre": "Amelia", "telefono": "35678467356", "correo": "amelia@gmail.com"},
  {
    "nombre": "Alfonso",
    "telefono": "96865764746",
    "correo": "alfonso@gmail.com"
  },
  {
    "nombre": "Abigail",
    "telefono": "68875636365",
    "correo": "abigail@gmail.com"
  },
];
