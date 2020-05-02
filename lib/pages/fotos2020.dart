
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Fotos2020 extends StatefulWidget {
  @override
  _Fotos2020State createState() => _Fotos2020State();
}

class _Fotos2020State extends State<Fotos2020> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
          body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _foto1(),
          
        ],
      ),
    
    );
  }
 
  void _showDialog2() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          backgroundColor: Colors.black,
          title: new Text("Marzo 6",style: TextStyle(color: Colors.lime),),
          content: new Text("Como te pudiste dar cuenta son muchos los recuerdos que tenemos juntos, ya son muchos cumpleaños que los celabramos exitosamente (aunque sea con salud):D se que hemos tenido muchos problemas y se que soy una mujer complicada pero estoy feliz de que seas vos el que este soportandome y dandome cariño algun dia las cosas van a mejorar y vamos a dejar de pensar en morirnos ejejej todo lo contrario yo quiero verte triunfar aunque sea de lejos pero mejor si es a tu lado TE AMO mucho y te deseo muchos exitos y muchos años mas de vida  ",style: TextStyle(color: Colors.cyan),),
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
            _showDialog2();
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

}
