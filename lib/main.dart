import 'package:flutter/material.dart';
import 'package:flutter_burc_rehberi/burc_detay.dart';
import 'package:flutter_burc_rehberi/burc_liste.dart';
//import 'package:flutter_burc_rehberi/testlib.dart';

const theme_Color = const Color(0xFFd72323);


void main() => runApp(MyApps());


class MyApps extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "Burc Rehberi2",
      debugShowCheckedModeBanner: false,

      initialRoute: "/burcListesi",

      routes: {
        "/" : (context) => BurcListesi(),
        "/burcListesi" : (context) => BurcListesi(),
      },

      onGenerateRoute: (RouteSettings settings){
        List<String> pathElemanlari = settings.name.split("/"); //  /  burcDetay  /    1
        if(pathElemanlari[1] == 'burcDetay'){
          return MaterialPageRoute(builder: (context) => BurcDetay(int.parse(pathElemanlari[2])));
        }
        return null;
      },


      theme: ThemeData(
        primaryColor: theme_Color,
        accentColor: Color(0xFFd72323),
      ),

    );
  } 

}