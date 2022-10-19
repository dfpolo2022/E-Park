// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:e_park/pages/mapa.dart';
import 'package:e_park/pages/code.dart';
import 'package:e_park/pages/pagos.dart';
import 'package:e_park/pages/cupos.dart';

class SeleccionPage extends StatefulWidget {
  const SeleccionPage({Key? key}) : super(key: key);

  @override
  State<SeleccionPage> createState() => _SeleccionPageState();
}

class _SeleccionPageState extends State<SeleccionPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 1) {
      _selectedIndex = 0;
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => PagosPage()));
    }
  }

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
                    'Usted ha seleccionado el siguiente parqueadero:',
                    style: TextStyle(
                        color: Colors.red, fontStyle: FontStyle.italic),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(color: Colors.red),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
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
                              decoration: BoxDecoration(
                                color: Colors.red,
                                border: Border.all(color: Colors.red),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                          Expanded(
                              flex: 3,
                              child: TextButton(
                                child: const Text(
                                  'VER CUPOS',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CuposPage())),
                              )),
                          Expanded(
                            flex: 3,
                            child: GestureDetector(
                              child: IconButton(
                                alignment: Alignment.center,
                                iconSize: 70,
                                icon: Icon(Icons.qr_code_2),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => CodePage()));
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
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.red),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
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
                              decoration: BoxDecoration(
                                color: Colors.red,
                                border: Border.all(color: Colors.red),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
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
                                    Text('-:-'),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(Icons.local_parking_outlined),
                                    Text('-:-'),
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
                                  onPressed: null),
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
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.red),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
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
                              decoration: BoxDecoration(
                                color: Colors.red,
                                border: Border.all(color: Colors.red),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
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
                                    Text('-:-'),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(Icons.local_parking_outlined),
                                    Text('-:-'),
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
                                onPressed: null,
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
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.red),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
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
                              decoration: BoxDecoration(
                                color: Colors.red,
                                border: Border.all(color: Colors.red),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
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
                                    Text('-:-'),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(Icons.local_parking_outlined),
                                    Text('-:-'),
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
                                onPressed: null,
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
                  child: TextButton(
                    child: const Text(
                      'No sé llegar al parqueadero.',
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MapaPage()));
                    },
                    style: ButtonStyle(alignment: Alignment.topCenter),
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
