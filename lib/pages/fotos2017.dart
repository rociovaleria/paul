import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Fotos2017 extends StatefulWidget {
  @override
  _Fotos2017State createState() => _Fotos2017State();
}

class _Fotos2017State extends State<Fotos2017> {
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
          _foto5(),
          _foto6(),
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
          backgroundColor: Colors.black,
          title: new Text("Enero 01",style: TextStyle(color: Colors.lime),),
          content: new Text("Como olvidar ese dia de año nuevo,y lo terco que te pusiste por acompañarme hasta mi casa para luego quedarte dormido en las bancas",style: TextStyle(color: Colors.cyan),),
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
              image: AssetImage('assets/img/01enero2017.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }

 

void _showDialog2() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          backgroundColor: Colors.black,
          title: new Text("Noviembre 17",style: TextStyle(color: Colors.lime),),
          content: new Text("Ese dia sacamos a pasear a tus perros y estoy segura te tuve que rogar mucho para sacarnos esa foto >:v ",style: TextStyle(color: Colors.cyan),),
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
              image: AssetImage('assets/img/1nov2017.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }

 

 void _showDialog3() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          backgroundColor: Colors.black,
          title: new Text("??????",style: TextStyle(color: Colors.lime),),
          content: new Text("Amaba esa blusa tanto como te amaba a vos, y ya no existe         :( pero el amor por vos si segura que si <3",style: TextStyle(color: Colors.cyan),),
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

  Widget _foto3() {
    return Stack(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            _showDialog3();
          },
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
            child: Image(
              image: AssetImage('assets/img/6feb2017.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
  void _showDialog4() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          backgroundColor: Colors.black,
          title: new Text("Octubre 04",style: TextStyle(color: Colors.lime),),
          content: new Text("Dia memorable, fuimos a comer con mi familia y desde ese entonces tenes el apodo de sicario :D, pero la pase muy bien fuimos a tu casa y habia una torta :p",style: TextStyle(color: Colors.cyan),),
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

  Widget _foto4() {
    return Stack(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            _showDialog4();
          },
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black,
            child: Image(
              image: AssetImage('assets/img/4oct2017.jpg'),
              //fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }


void _showDialog5() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          backgroundColor: Colors.black,
          title: new Text("Enero 18",style: TextStyle(color: Colors.lime),),
          content: new Text("Si mal no recuerdo esto fue en ese verano que te quedaste en ed2 y estabas depre :( para mi era normal pero para un nerdcillo no",style: TextStyle(color: Colors.cyan),),
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

  Widget _foto5() {
    return Stack(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            _showDialog5();
          },
          child: Container(
      
            color: Colors.black,

            child: Container(
              width: double.infinity,
           height: double.infinity,
              child: Image(
              image: AssetImage('assets/img/18enero2017.jpg'),
            fit: BoxFit.cover,
            ),),
          ),
        ),
      ],
    );
  }
  void _showDialog6() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          backgroundColor: Colors.black,
          title: new Text("Diciembre 31",style: TextStyle(color: Colors.lime),),
          content: new Text("Antes de ir a la fiesta(en la casa de Eddy), pintaba una noche agradable pero yo siempre fregandola lo siento :(",style: TextStyle(color: Colors.cyan),),
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

  Widget _foto6() {
    return Stack(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            _showDialog6();
          },
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
            child: Image(
              image: AssetImage('assets/img/31dic2017.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
  
}
