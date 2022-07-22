import 'package:flutter/material.dart';

class ExploreGrid extends StatelessWidget {

  final Color color;
  final int count;
  ExploreGrid({required this.color, required this.count});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: count,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index){
          return Padding(
            padding: EdgeInsets.all(2.0),
              child: Container(color: color));
        }
    );
  }
}
