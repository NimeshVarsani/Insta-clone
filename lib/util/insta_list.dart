import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:like_button/like_button.dart';

class InstaList extends StatefulWidget {

  final String? name;
  InstaList(this.name);

  @override
  State<StatefulWidget> createState() => _InstaListState();
  }

  class _InstaListState extends State<InstaList>{

  @override
  Widget build(BuildContext context) {
    int likesCount = 56000;
    return Column(
    children: [
      ListTile(
        leading: CircleAvatar(
          radius: 16,
          child: ClipRRect(
            child: Image.asset('images/nimesh.png'),
            borderRadius: BorderRadius.circular(50.0),
          ),
        ),
        title: Text(widget.name!, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
        trailing: const Icon(Icons.more_vert, color: Colors.black, ),
      ),
      GestureDetector(
        onDoubleTap: (){
          print('tapped');
          },
        child: FittedBox(
          child: Image.asset('images/tree.jpg'),
          fit: BoxFit.fill,
          alignment: Alignment.center,
        ),
      ),
      ListTile(
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            LikeButton(
              likeCount: likesCount,
            ),
            IconButton(onPressed: () {}, icon: const Icon(FontAwesomeIcons.comment, color: Colors.black,)),
            IconButton(onPressed: () {}, icon: const Icon(FontAwesomeIcons.share, color: Colors.black,)),
          ],
        ),
        trailing: IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.bookmark,
              color: Colors.black,
            )),
      ),
      Container(
        padding: const EdgeInsets.only(left: 15.0,),
        height: 20.0,
        width: double.infinity,
        child: const Text('49,435 likes', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold), ),
      ),
      Container(
        padding: const EdgeInsets.only(left: 15.0,),
        height: 20.0,
        width: double.infinity,
        child: Row(children: const [
          Text('Wealth ', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold), ),
          Text('Hey this is my farm, Chilling ', style: TextStyle(color: Colors.black), )
        ]),
      ),
      Container(
        padding: const EdgeInsets.only(top: 8.0, left: 15.0),
        width: double.infinity,
        child: const Text('View all 762 Comments', style: TextStyle(color: Colors.black),),
      ),
      Container(
        padding: const EdgeInsets.only(top: 8.0, left: 15.0, bottom: 10.0),
        width: double.infinity,
        child: const Text('43 minutes ago', style: TextStyle(color: Colors.black, fontSize: 11.0),),
      )
    ],
      );

  }




}
