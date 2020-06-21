import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:landmark_app/views/custom_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listaDeLugares = [
      'Charley Rivers',
    'Chilkoot Trail',
    'Chicoteague',
    'Hidden Lake',
    'Icy Bay',
    'Lake McDonald',
    'Rainbow Lake',
    'Silver Salomon Creek',
    'St. Mary Lake',
    'Turtle Rock',
    'Twin Lake',
    'Umbagog'
    ];
    return Container(
        child: Material(
      child: CupertinoPageScaffold(
          // navigationBar: CupertinoNavigationBar(
          //   middle: Text('Cupertino App Bar'),
          //),
          child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text('Landmarks'),
          ),
          
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return CustomItemList(
                    titulo: listaDeLugares[
                        index]); // titulo variable titulo de CustomItemList // lista local de nombres
              },
              childCount: listaDeLugares
                  .length, // determinacion de cuantos items a través de length
            ),
          )

          // SliverFillRemaining(
          //   child:Center(child: Text('Hola mundo'),)
          // )
        ],
      )),
    ));
  }
}