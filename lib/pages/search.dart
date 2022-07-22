import 'package:flutter/material.dart';
import 'package:insta_clone/util/explore_grid.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(
          height: 40,
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              prefixIcon: Icon(Icons.search),
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
            ),
          ),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.mapLocationDot, color: Colors.black,))
        ],
      ),
      body: ExploreGrid(color: Colors.deepPurple[100]!, count: 21,),

    );
  }
}
