
import 'package:flutter/material.dart';
import 'package:paul/pages/ContainerC.dart';
import 'package:paul/pages/fotos2016.dart';
import 'package:paul/pages/fotos2017.dart';
import 'package:paul/pages/fotos2018.dart';
import 'package:paul/pages/fotos2019.dart';
import 'package:paul/pages/fotos2020.dart';
import 'package:paul/pages/home.dart';

void main() async{

  runApp(MyApp());}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


  
      return MaterialApp(
         debugShowCheckedModeBanner: false,
         initialRoute: 'home',
          routes:{
            'home': (BuildContext context)=>Home(), 
            'principal':(BuildContext context )=>ContainerC(),
            '2016':(BuildContext context)=>Fotos2016(),
            '2017':(BuildContext context)=>Fotos2017(),
            '2018':(BuildContext context)=>Fotos2018(),
            '2019':(BuildContext context)=>Fotos2019(),
            '2020':(BuildContext context)=>Fotos2020(),
         
            

            
          },
      );
    
    
  }


}

