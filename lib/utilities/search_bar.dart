
import 'package:app_bosques_v2/utilities/text_find_items.dart';
import 'package:flutter/material.dart';


String busqueda="";
bool isSearched = false;

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0,horizontal: 10.0),
      padding: EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.indigo[200].withOpacity(0.3)
      ),
      child: TextField(
        onSubmitted: (text){
          setState(() {
            text == "" 
            ? isSearched = false
            : isSearched = true;
          print(isSearched);
          busqueda = text;
          print(busqueda);
          });
        },
        decoration: InputDecoration(
          icon: Icon(Icons.search,color: Colors.indigo[900]),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
          hintText: 'Búsqueda',
        ),
      ),
    );
  }


}

  Widget mostrarTexto (bool searched){  
    Widget returnWidget;
      print("Is Searched? $isSearched");
      searched == true
      ? returnWidget = FindItems()
      : returnWidget = Text("Estos son los items de Hoy");
    return returnWidget;
  }
