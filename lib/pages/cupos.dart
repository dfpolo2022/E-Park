// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CuposPage extends StatelessWidget {
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
          children: [
            Expanded(flex: 1, child: Container()),
            Expanded(
              flex: 5,
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),
                  Expanded(
                    flex: 1,
                    child: const Text(
                      'Parqueadero #8 - Universidad del Norte',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.red),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcMRQLIiGnvDS4WThBbJzKCZU-L5yGLDhia8KitRIZc2hNO9FsAsTXnurQJSrkZx0FfXo&usqp=CAU')),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),
                  Expanded(
                    flex: 1,
                    child: const Text('Cupos disponibles: 7'),
                  ),
                  Expanded(
                      flex: 1,
                      child: TextButton(
                        child: const Text(
                          'Regresar',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )),
                  Expanded(flex: 1, child: Container()),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(),
            )
          ],
        )));
  }
}
