import 'package:app_bosques_v2/utilities/category_items.dart';
import 'package:app_bosques_v2/utilities/lista_items.dart';
import 'package:app_bosques_v2/utilities/search_bar.dart';

import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Ventas'),
        leading: IconButton(
          icon: Icon(Icons.reorder,size: 35.0,color: Colors.white60),
          onPressed: (){},
        ),
        elevation: 20.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications,color: Colors.orange[200],
            size: 35.0,),
            onPressed: (){},
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            //Aqui irá la SearchBar,
            SearchBar(),            
            CategoryItem(),
            Container(margin: EdgeInsets.symmetric(vertical: 10),),
            ListaObjetos(/*listaObjetos: listaObjetos*/)
          ],
        )
      ),
    );
  }
}



