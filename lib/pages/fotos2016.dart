import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Fotos2016 extends StatefulWidget {
  @override
  _Fotos2016State createState() => _Fotos2016State();
}

class _Fotos2016State extends State<Fotos2016> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _foto1(),
          _foto2(),
        ],
      ),
    );
  }

  void _showDialog1() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Septiembre 22",style:TextStyle(color: Colors.lime)),
          backgroundColor: Colors.black,
          content: new Text("Una Foto que me me genera melancolia, cuando todavia estabas en la universidad, siendo el mismo nerdcillo desde que te conoci, cuando teniamos las tardes libres para mirar peliculas y aprovechar estar juntos :(",style: TextStyle(color:Colors.cyan),),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Icon(Icons.close,color: Colors.lightGreenAccent,),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _showDialog2() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          backgroundColor: Colors.black,
          title: new Text("Noviembre 15",style: TextStyle(color: Colors.lime),),
          content: new Text("Estoy segura que eso fue despues de una de las tantas ayudantias que intentaba no faltar para verte :D",style: TextStyle(color: Colors.cyan),),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Icon(Icons.close,color: Colors.lightGreenAccent,),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Widget _foto1() {
    return Stack(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            _showDialog1();
          },
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
            child: Image(
              image: AssetImage('assets/img/15nov2016.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }

  Widget _foto2() {
    return Stack(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            _showDialog2();
          },
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
            child: Image(
              image: AssetImage('assets/img/19nov2016.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
