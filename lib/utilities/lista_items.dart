import 'package:flutter/material.dart';


class ListaObjetos extends StatelessWidget {
  /*
  const ListaObjetos({
    Key key,
    @required this.listaObjetos,
  }) : super(key: key);

  final List<String> listaObjetos; */

  final List<String> listaObjetos = ["Zapatos","Celulares","Vasos","Comida","Consola","Cubiertos","Balones"];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: listaObjetos.length,
         scrollDirection: Axis.vertical,
         itemBuilder: (context, index) => Container(
           child: Card(
             child: Column(
               children: <Widget>[
                 Row(
                   children: <Widget>[
                     Icon(Icons.shopping_basket),
                     Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                     Text(listaObjetos[index])
                   ],
                 ),
                Container(height: 25,),
                Text("Descripción"),
                Container(height: 25,),
               ],
             ),
           ),
         ),
      ),
    );
  }
}