// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:e_park/pages/bancos.dart';

class PagosPage extends StatefulWidget {
  const PagosPage({Key? key}) : super(key: key);

  @override
  State<PagosPage> createState() => _PagosPageState();
}

class _PagosPageState extends State<PagosPage> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 0) {
      Navigator.pop(context);
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
                    'Seleccione uno de los siguientes métodos de pago:',
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
                          border: Border.all(color: Colors.red),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            flex: 3,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              child: Icon(
                                Icons.attach_money,
                                size: 70,
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                          Expanded(
                              flex: 3,
                              child: const Text(
                                'PAGO EN LÍNEA',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                          Expanded(
                            flex: 3,
                            child: GestureDetector(
                              child: IconButton(
                                alignment: Alignment.center,
                                iconSize: 70,
                                icon: Icon(Icons.check_box_outlined),
                                onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BancosPage())),
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
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              child: Icon(
                                Icons.attach_money,
                                size: 70,
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                          Expanded(
                              flex: 3,
                              child: const Text(
                                'PAGO ANTICIPADO',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                          Expanded(
                            flex: 3,
                            child: GestureDetector(
                              child: IconButton(
                                alignment: Alignment.center,
                                iconSize: 70,
                                icon: Icon(Icons.check_box_outlined),
                                onPressed: () => null,
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
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              child: Icon(
                                Icons.attach_money,
                                size: 70,
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                          Expanded(
                              flex: 3,
                              child: const Text(
                                'CHECK-IN',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                          Expanded(
                            flex: 3,
                            child: GestureDetector(
                              child: IconButton(
                                alignment: Alignment.center,
                                iconSize: 70,
                                icon: Icon(Icons.check_box_outlined),
                                onPressed: () => null,
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
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              child: Icon(
                                Icons.attach_money,
                                size: 70,
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                          Expanded(
                              flex: 3,
                              child: const Text(
                                'CHECK-OUT',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                          Expanded(
                            flex: 3,
                            child: GestureDetector(
                              child: IconButton(
                                alignment: Alignment.center,
                                iconSize: 70,
                                icon: Icon(Icons.check_box_outlined),
                                onPressed: () => null,
                              ),
                            ),
                          )
                        ],
                      )),
                ),
                Expanded(
                    flex: 2,
                    child: Container(
                      margin: const EdgeInsets.all(20.0),
                      alignment: Alignment.center,
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
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.car_repair),
            label: 'Parqueo',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.attach_money,
            ),
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
