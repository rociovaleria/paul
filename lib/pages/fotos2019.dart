import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Fotos2019 extends StatefulWidget {
  @override
  _Fotos2019State createState() => _Fotos2019State();
}

class _Fotos2019State extends State<Fotos2019> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _foto1(),
          _foto2(),
          _foto3(),
          _foto4(),
          _foto5()
        ],
      ),
    );
  }

  void _showDialog(String titulo, String cuerpo) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          backgroundColor: Colors.black,
          title: new Text(
            titulo,
            style: TextStyle(color: Colors.lime),
          ),
          content: new Text(
            cuerpo,
            style: TextStyle(color: Colors.cyan),
          ),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text(
                "Close",
                style: TextStyle(color: Colors.lime),
              ),
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
            _showDialog('Octubre ??', 'Como olvidarse de esos 21 dias de paro que por cierto tuve que ir 3 veces a visitarte y el señorito feliz en su casa,aun asi valoro ese dia que fuiste a darme alcance, Te amo :)'
          );
          },
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black,
            child: Image(
              image: AssetImage('assets/img/5nov2019.jpg'),
              //fit: BoxFit.cover,
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
            _showDialog('Septiembre', 'Amo y valoro el tiempo que te das para estar conmigo, aunque te reclame mucho tambien te comprendo');
          },
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
            child: Image(
              image: AssetImage('assets/img/22sep2019.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }

  Widget _foto3() {
    return Stack(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            _showDialog('??', 'Noche de Programadaa :D');
          },
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
            child: Image(
              image: AssetImage('assets/img/2019.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }

  Widget _foto4() {
    return Stack(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            _showDialog('Mayo ', 'Otra noche de programada :D, Aprovechando esta fotito te quiero agradecer por toda la paciencia y el empeño que le pusiste al enseñarme desde lo mas basico cuando no sabia que era php ni que era un framework nada de nada, y hasta ahora me seguis ayudando algun dia te lo compensare, lo prometo');
          },
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
            child: Image(
              image: AssetImage('assets/img/1mayo2019.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
   Widget _foto5() {
    return Stack(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            _showDialog(' ??', 'Siempre desde que te conoci te admire mucho sos una persona valiosa siempre superas tus limites y estoy segura que vas a ser un hombre exitoso , Te amo :)');
          },
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
            child: Image(
              image: AssetImage('assets/img/2019gra.jfif'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
