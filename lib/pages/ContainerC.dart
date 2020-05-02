import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:paul/pages/fotos2016.dart';
import 'package:paul/pages/fotos2020.dart';

import 'fotos2017.dart';
import 'fotos2018.dart';
import 'fotos2019.dart';

class ContainerC extends StatefulWidget {
  @override
  _ContainerCState createState() => _ContainerCState();
}

class _ContainerCState extends State<ContainerC> {
  ContainerC createState() => new ContainerC();
  AudioPlayer advancedPlayer;
  //AudioCache audioCache = new AudioCache();
  // AudioPlayer advancedPlayer = new AudioPlayer();
  String localFilePath;
  @override
  initState() {
    super.initState();
    loadMusic();
  }

  Future loadMusic() async {
    advancedPlayer = await AudioCache().loop("audios/love.mp3");
  }

  @override
  void dispose() {
    advancedPlayer = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // debugCheckIntrinsicSizes = false;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GestureDetector(
            child: Icon(
              Icons.arrow_back,
            ),
            onTap: () {
              // Navigator.push(context, Route(Home);
            },
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black,
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 5.0,
                ),
                _titulos(),
                _botones(),
              ],
            ),
          )
        ],
      ),
    );
  }

  _stopMusica() {
    advancedPlayer.stop();
  }

  Widget _titulos() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment:MainAxisAlignment.center ,
          children: <Widget>[
              IconButton(
                icon: Icon(Icons.play_arrow),
                iconSize: 20.0,
                color: Color.fromRGBO(0, 255, 255, 100),
                onPressed: () {
                  //_stopMusica();
                }),
            IconButton(
                icon: Icon(Icons.stop),
                iconSize: 20.0,
                color: Color.fromRGBO(0, 255, 255, 100),
                onPressed: () {
                  _stopMusica();
                }),
          ],
        ),
      ),
    );
  }

  Widget _botones() {
    return Table(
      children: [
        TableRow(children: [
          _crearBoton(
              Color.fromRGBO(0, 128, 128, 100), Icons.favorite_border, '2016'),
          _crearBoton(
              Color.fromRGBO(0, 128, 128, 100), Icons.favorite_border, '2017'),
        ]),
        TableRow(children: [
          _crearBoton(
            Color.fromRGBO(0, 128, 128, 100),
            Icons.favorite_border,
            '2018',
          ),
          _crearBoton(
              Color.fromRGBO(0, 128, 128, 100), Icons.favorite_border, '2019'),
        ]),
        TableRow(children: [
          _crearBoton(
            Color.fromRGBO(0, 128, 128, 100),
            Icons.favorite_border,
            '2020',
          ),
          _crearBoton(
              Color.fromRGBO(0, 128, 128, 100), Icons.favorite_border, '2021'),
        ])
      ],
    );
  }

  Widget _crearBoton(Color color, IconData icono, String texto) {
    return Container(
      height: 150.0,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          // color: Colors.lime[600],
          color: Colors.white12,
          borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SizedBox(
            height: 5.0,
          ),
          GestureDetector(
              child: CircleAvatar(
                backgroundColor: color,
                radius: 35.0,
                child: Icon(
                  icono,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
              onTap: () {
                if (texto == '2016') {
                  final route = MaterialPageRoute(builder: (context) {
                    return Fotos2016();
                  });
                  Navigator.push(context, route);
                }
                if (texto == '2017') {
                  final route = MaterialPageRoute(builder: (context) {
                    return Fotos2017();
                  });
                  Navigator.push(context, route);
                }
                if (texto == '2018') {
                  final route = MaterialPageRoute(builder: (context) {
                    return Fotos2018();
                  });

                  Navigator.push(context, route);
                }
                if (texto == '2019') {
                final route = MaterialPageRoute(builder: (context) {
                    return Fotos2019();
                });
                
                  Navigator.push(context, route);
                }
                if (texto == '2020') {
                  final route = MaterialPageRoute(builder: (context) {
                  return Fotos2020();
                  });

                  Navigator.push(context, route);
                }
                if (texto == '2021') {
                  final route = MaterialPageRoute(builder: (context) {
                    return Fotos2020();
                  });

                  Navigator.push(context, route);
                }
              }),
          Text(
            texto,
            style: TextStyle(color: color),
          ),
          SizedBox(
            height: 5.0,
          ),
        ],
      ),
    );
  }

  void procesarRespuestaValidador(bool respuesta) {
    String resp = "";
    if (respuesta) {
      resp = "";
    } else {
      resp = "Intente de nuevo";
    }
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Resultado de la validacion"),
          content: new Text(resp),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Cerrar"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
