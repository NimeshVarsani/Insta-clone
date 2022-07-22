import 'package:flutter/material.dart';
import 'package:insta_clone/util/explore_grid.dart';

class AccountTab1 extends StatelessWidget {
  const AccountTab1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExploreGrid(color: Colors.lightBlueAccent, count: 5,);
  }
}
