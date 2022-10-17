// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_final_fields, sort_child_properties_last

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Park',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'E-Park'),
    );
  }
}

Future<void> _showMyDialog(BuildContext context, String index) async {
  return showDialog<void>(
    context: context,
    builder: (_) => popupConfirmacion(context, index),
  );
}

Widget popupConfirmacion(BuildContext context, String index) {
  return AlertDialog(
    title: const Text(
      'Confirmación',
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    content:
        Text('Usted ha seleccionado el parqueadero #$index, ¿Es correcto?'),
    actions: <Widget>[
      TextButton(
        child: Text(
          'No',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      TextButton(
        child: Text(
          'Si',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    ],
    elevation: 24.0,
  );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  String _tiempoOcho = '15 minutos';
  String _parqueoOcho = '15 cupos';

  String _tiempoNueve = '10 minutos';
  String _parqueoNueve = '6 cupos';

  String _tiempoDiez = '20 minutos';
  String _parqueoDiez = '30 cupos';

  String _tiempoDoce = '13 minutos';
  String _parqueoDoce = '4 cupos';

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.local_parking_outlined),
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.supervised_user_circle),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('No user in UI demonstration.')));
            },
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            color: Colors.red,
            width: 15.0,
          ),
        ],
      ),
      body: Center(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.all(2.0),
                alignment: Alignment.center,
              )),
          Expanded(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.all(20.0),
                      alignment: Alignment.center,
                    )),
                Expanded(
                  flex: 1,
                  child: const Text(
                    '¡Bienvenido, Usuario!',
                    style: TextStyle(
                        color: Colors.red, fontStyle: FontStyle.italic),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                      alignment: Alignment.center,
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.red)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            flex: 3,
                            child: Container(
                              child: const Text(
                                '8',
                                style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              color: Colors.red,
                              alignment: Alignment.center,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(),
                          ),
                          Expanded(
                            flex: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(Icons.access_time_filled),
                                    Text(_tiempoOcho),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(Icons.local_parking_outlined),
                                    Text(_parqueoOcho),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: GestureDetector(
                              child: IconButton(
                                alignment: Alignment.center,
                                iconSize: 70,
                                icon: Icon(Icons.check_box_outlined),
                                onPressed: () async {
                                  await _showMyDialog(context, '8');
                                },
                              ),
                            ),
                          )
                        ],
                      )),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.all(20.0),
                      alignment: Alignment.center,
                    )),
                Expanded(
                  flex: 3,
                  child: Container(
                      alignment: Alignment.center,
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.red)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            flex: 3,
                            child: Container(
                              child: const Text(
                                '9',
                                style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              color: Colors.red,
                              alignment: Alignment.center,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(),
                          ),
                          Expanded(
                            flex: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(Icons.access_time_filled),
                                    Text(_tiempoNueve),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(Icons.local_parking_outlined),
                                    Text(_parqueoNueve),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: GestureDetector(
                              child: IconButton(
                                alignment: Alignment.center,
                                iconSize: 70,
                                icon: Icon(Icons.check_box_outlined),
                                onPressed: () async {
                                  await _showMyDialog(context, '9');
                                },
                              ),
                            ),
                          )
                        ],
                      )),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.all(20.0),
                      alignment: Alignment.center,
                    )),
                Expanded(
                  flex: 3,
                  child: Container(
                      alignment: Alignment.center,
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.red)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            flex: 3,
                            child: Container(
                              child: const Text(
                                '10',
                                style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              color: Colors.red,
                              alignment: Alignment.center,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(),
                          ),
                          Expanded(
                            flex: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(Icons.access_time_filled),
                                    Text(_tiempoDiez),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(Icons.local_parking_outlined),
                                    Text(_parqueoDiez),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: GestureDetector(
                              child: IconButton(
                                alignment: Alignment.center,
                                iconSize: 70,
                                icon: Icon(Icons.check_box_outlined),
                                onPressed: () async {
                                  await _showMyDialog(context, '10');
                                },
                              ),
                            ),
                          )
                        ],
                      )),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.all(20.0),
                      alignment: Alignment.center,
                    )),
                Expanded(
                  flex: 3,
                  child: Container(
                      alignment: Alignment.center,
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.red)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            flex: 3,
                            child: Container(
                              child: const Text(
                                '12',
                                style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              color: Colors.red,
                              alignment: Alignment.center,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(),
                          ),
                          Expanded(
                            flex: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(Icons.access_time_filled),
                                    Text(_tiempoDoce),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(Icons.local_parking_outlined),
                                    Text(_parqueoDoce),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: GestureDetector(
                              child: IconButton(
                                alignment: Alignment.center,
                                iconSize: 70,
                                icon: Icon(Icons.check_box_outlined),
                                onPressed: () async {
                                  await _showMyDialog(context, '12');
                                },
                              ),
                            ),
                          )
                        ],
                      )),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.all(20.0),
                      alignment: Alignment.center,
                    )),
                Expanded(
                  flex: 1,
                  child: const Text(
                    'Seleccione un parqueadero.',
                    style: TextStyle(
                        color: Colors.red, fontStyle: FontStyle.italic),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.all(2.0),
                alignment: Alignment.center,
              )),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.car_repair),
            label: 'Parqueo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: 'Pagar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Opciones',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favoritos',
          ),
        ],
        backgroundColor: Colors.red,
        selectedItemColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
