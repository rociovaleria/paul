import 'package:paul/pages/ContainerC.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _pagina1(),
          _pagina3(context),
          _pagina4()
        ],
      ),
    );
  }

  Widget _pagina1() {
    return Stack(
      children: <Widget>[ _imagenFondo(), _textos()],
    );
  }
    Widget _pagina4() {
    return Stack(
      children: <Widget>[ _imagenUlt(),],
    );
  }



  Widget _imagenFondo() {
    return Container(
        width: double.infinity,
      height: double.infinity,
      color: Colors.white,
     // padding: EdgeInsets.symmetric(vertical: 170.0, horizontal: 3.0),
      child: Image(
        image: AssetImage('assets/img/hb.jpg'),
        fit: BoxFit.cover,
      ),
    );
  }
  Widget _imagenUlt() {
    return Container(
        width: double.infinity,
      height: double.infinity,
      color: Colors.white,
     // padding: EdgeInsets.symmetric(vertical: 170.0, horizontal: 3.0),
      child: Image(
        image: AssetImage('assets/img/22.jpg'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _textos() {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(),
        ),
        
        Icon(
          Icons.keyboard_arrow_down,
          color: Color.fromRGBO(201, 156, 239, 100),
          size: 100.0,
        ),
      ],
    );
  }

  Widget _pagina3(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 60.0,
          ),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
              child: Text(
                '',
                style: TextStyle(color: Color.fromRGBO(201, 156, 239, 100), fontSize: 30.0),
              )),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
            child: Text(
                'Puede que esta pequeña dedicatoria no sustituya al abrazo que pueda darte cada día, pero con ella puedo hacer que sepas que deseo lo mejor para tu vida, incluso cuando no sea tu cumpleaños',
                style: TextStyle(color: Color.fromRGBO(0, 128, 128, 100), fontSize: 20.0)),
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 30.0,
              ),
             
             
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
        
          RaisedButton(
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
              shape: StadiumBorder(),
              color: Color.fromRGBO(0, 255, 255, 100),
              textColor: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                child: Text(
                  "Touch me",
                  style: TextStyle(fontSize: 22.0,color: Colors.black),
                ),
              ),
              onPressed: () {
                final route = MaterialPageRoute(builder: (context) {
                  return ContainerC();
               
                });
                Navigator.push(context, route);
              }),
        ],
      ),
    );
  }
}
