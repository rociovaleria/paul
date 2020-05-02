import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Fotos2018 extends StatefulWidget {
  @override
  _Fotos2018State createState() => _Fotos2018State();
}

class _Fotos2018State extends State<Fotos2018> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(scrollDirection: Axis.vertical, children: <Widget>[
        _foto1(),
        _foto2(),
        _foto3(),
        _foto4(),
        _foto5(),
        _foto6(),
        _foto7(),
        _foto8(),
        _foto9(),
      ]),
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
            _showDialog('Mayo 12', 'Estrenando la camara de tu Huawei');
          },
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
            child: Image(
              image: AssetImage('assets/img/12mayo2018.png'),
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
            _showDialog('Marzo 06', 'Aprovechando que es la misma fecha especial cada año, quisiera que todavia celebremos muchos cumpleaños juntos, que el destino y los dioses nos den ese privilegio');
          },
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
            child: Image(
              image: AssetImage('assets/img/6marzo2018.png'),
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
            _showDialog('Abril 30', 'Cumple cumple de Natalia,donde todo termino un desastre y te llevaste a los invitados a tu casa sin permiso de tu madre, que por cierto estaba tan enojada que no los dejo pasar ejjeje');
          },
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
            child: Image(
              image: AssetImage('assets/img/30abril2018.jpg'),
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
            _showDialog(':D', 'Un dia normal y cualquiera amandonos como siempre');
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
            color: Colors.black,
            child: Image(
              // width: double.infinity,
              height: double.infinity,
              image: AssetImage('assets/img/2018.png'),
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
            _showDialog('Diciembre ??', 'Cuando nos fuimos a la bifurcada y luego ya no me acuerdo que paso ajajaj, pero al otro dia estaba fatal y vos normal');
          },
          child: Container(
           // padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
           // height: double.infinity,
         // width: double.infinity,
            color: Colors.black,
            width: double.infinity,
            height: double.infinity,
            child: Image(
              image: AssetImage('assets/img/2018dic.jpg'),
              //fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }

  Widget _foto6() {
    return Stack(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            _showDialog('Mayo ?', 'Saliendo de clases fuimos a probar esos deliciosos lomitos y prometimos volver pero hasta ahora nada T.T ');
          },
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
            child: Image(
              image: AssetImage('assets/img/2018mayo.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }

  Widget _foto7() {
    return Stack(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            _showDialog('Diciembre', 'Como siempre buscando que comer en el cine de tarija :D');
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
            color: Colors.black,
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
                width: double.infinity,
                height: double.infinity,
                child: Image(
                  image: AssetImage('assets/img/62018.png'),
                  fit: BoxFit.cover,
                )),
          ),
        ),
      ],
    );
  }

  Widget _foto8() {
    return Stack(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            _showDialog('Julio 18', 'Owww esta si fue nuestra salida en parejas con mi bff, la 2da y ultima ves T.T ');
          },
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
            child: Image(
              image: AssetImage('assets/img/julio2018.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }

  Widget _foto9() {
    return Stack(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            _showDialog('Julio ??', 'Tarde de shisha, estabas tratando de abuenarme por algo que hiciste pero mas bien no recuerdo :D');
          },
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
            child: Image(
              image: AssetImage('assets/img/julio2018.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
