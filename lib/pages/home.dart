import 'package:flutter/material.dart';
import 'package:insta_clone/util/insta_list.dart';
import 'package:insta_clone/util/insta_stories.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  static final List people = [
    'Nimesh',
    'Rahul',
    'Kuljeet',
    'JJ Hirani',
    'xyz',
    'Posiya',
    'Anynon',
    'NetworkCh',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Instagram',
          style: TextStyle(
            fontSize: 28.0,
            color: Colors.black,
            fontFamily: 'Satisfy',
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add_box_outlined, color: Colors.black,),
            onPressed: () {
            },
          ),
          IconButton(
            icon: const Icon(Icons.send, color: Colors.black,),
            onPressed: () {
              print('message icon pressed');
            },
          ),
        ],
      ),
      body: Column(
        children: [

          //stories
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Container(
              height: 110,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (BuildContext context, int index) {
                  return InstaStories(people[index]);
                },
              ),
            ),
          ),

          //Posts
          Expanded(
            child: ListView.builder(
              itemCount: people.length,
              itemBuilder: (BuildContext context, int index) {
                return InstaList(people[index]);
              },
            ),
          )
        ],
      ),
    );
  }
}
