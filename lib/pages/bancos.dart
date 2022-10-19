// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_returning_null_for_void

import 'package:flutter/material.dart';

class BancosPage extends StatefulWidget {
  const BancosPage({Key? key}) : super(key: key);

  @override
  State<BancosPage> createState() => _BancosPageState();
}

Future<void> _showMyDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    builder: (_) => popupConfirmacion(context),
  );
}

Widget popupConfirmacion(BuildContext context) {
  return AlertDialog(
    title: const Text(
      'Confirmación',
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    content: Text('El pago ha sido realizado exitosamente.'),
    actions: <Widget>[
      TextButton(
        child: Text(
          'Terminar',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        onPressed: () {
          Navigator.of(context).pop();
          Navigator.of(context).pop();
          Navigator.of(context).pop();
          Navigator.of(context).pop();
        },
      )
    ],
    elevation: 24.0,
  );
}

class _BancosPageState extends State<BancosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.local_parking_outlined),
        title: Text('E-Park'),
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
                    'Seleccione el banco con el que desea pagar:',
                    style: TextStyle(
                        color: Colors.red, fontStyle: FontStyle.italic),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  flex: 12,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        border: Border.all(color: Colors.red)),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                            flex: 1,
                            child: Container(
                                /*child: TextButton(
                                onPressed: () => null,
                                child: Text('BANCOLOMBIA'),
                              ),*/
                                )),
                        Expanded(
                          flex: 3,
                          child: TextButton(
                            onPressed: () => _showMyDialog(context),
                            child: Text(
                              'BANCOLOMBIA',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: TextButton(
                              onPressed: () => _showMyDialog(context),
                              child: Text(
                                'BANCO DE BOGOTÁ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )),
                        ),
                        Expanded(
                          flex: 3,
                          child: TextButton(
                            onPressed: () => _showMyDialog(context),
                            child: Text('DAVIPLATA',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: TextButton(
                            onPressed: () => _showMyDialog(context),
                            child: Text('NEQUI',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: Container(
                                /*child: TextButton(
                                onPressed: () => null,
                                child: Text('BANCOLOMBIA'),
                              ),*/
                                )),
                      ],
                    ),
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: TextButton(
                      child: const Text(
                        'Regresar',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )),
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
    );
  }
}
