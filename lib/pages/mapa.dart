import 'package:flutter/material.dart';

class MapaPage extends StatelessWidget {
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
            child: Column(
          children: [
            Expanded(
                flex: 5,
                child: Image.network(
                    'https://media.discordapp.net/attachments/938822437049626654/1031426861496012800/unknown.png')),
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
            Expanded(
              flex: 1,
              child: Container(),
            )
          ],
        )));
  }
}
