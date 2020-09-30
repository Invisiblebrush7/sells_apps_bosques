import 'package:flutter/material.dart';

int selectedIndex=0;

class CategoryItem extends StatefulWidget {
  CategoryItem({Key key}) : super(key: key);

  @override
  _CategoryItemState createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  List<String> listaCategorias = 
  ['Ropa','Deportes','Hogar','Salud','Varios'];
  
  //int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical:10.0),
        height: 40.0,
        child: ListView.builder(          
          itemCount: listaCategorias.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index) => GestureDetector(
            onTap: (){
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 8.0),
              padding: EdgeInsets.all(12.0),
              alignment: Alignment.center,
              decoration: BoxDecoration( 
                color: index==selectedIndex 
                ? Colors.blue[50]
                : Colors.transparent,
                borderRadius: BorderRadius.circular(10.0)
              ),
              child: Text(
                listaCategorias[index],
                style: TextStyle(
                  fontWeight: index==selectedIndex
                  ? FontWeight.bold
                  : FontWeight.normal,
                ),
                ),
            ),
          )
         ),
    );
  } 
}