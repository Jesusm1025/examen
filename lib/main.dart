import 'package:flutter/material.dart';

void main() {
  runApp(MiApp());
}

class MiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Datos Personales', home: DatosPersonales());
  }
}

class DatosPersonales extends StatefulWidget {
  @override
  _DatosPersonalesState createState() => _DatosPersonalesState();
}

class _DatosPersonalesState extends State<DatosPersonales> {
  final _nombreController = TextEditingController();
  final _matriculaController = TextEditingController();

  String _nombre = '';
  String _matricula = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ingrese sus datos')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nombreController,
              decoration: InputDecoration(labelText: 'Nombre'),
            ),
            TextField(
              controller: _matriculaController,
              decoration: InputDecoration(labelText: 'Matrícula'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _nombre = _nombreController.text;
                  _matricula = _matriculaController.text;
                });
              },
              child: Text('Mostrar datos'),
            ),
            SizedBox(height: 20),
            if (_nombre.isNotEmpty && _matricula.isNotEmpty)
              Column(
                children: [
                  Text('Nombre: $_nombre', style: TextStyle(fontSize: 18)),
                  Text(
                    'Matrícula: $_matricula',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
