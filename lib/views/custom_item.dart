import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomItemList extends StatelessWidget {
  
 const CustomItemList({Key key, this.titulo, this.assetAdress}) : super(key: key);  
  
  final String titulo;
  final String assetAdress;

 
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(assetAdress),
      title: Text(titulo),
      trailing: _crearIconos(),
      //Icon(CupertinoIcons.right_chevron)
    
    
      
    );
  }
}

 _crearIconos(){
   return Row(
     mainAxisSize:MainAxisSize.min,
     children: <Widget>[
       Icon(IconData(0xF4B3,fontFamily: "CupertinoIcons"),size: 30,color: CupertinoColors.systemYellow,),
       Icon(CupertinoIcons.right_chevron),
       
     ],

   );
 }

