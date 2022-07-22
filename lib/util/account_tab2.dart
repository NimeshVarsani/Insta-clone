import 'package:flutter/material.dart';
import 'package:insta_clone/util/explore_grid.dart';

class AccountTab2 extends StatelessWidget {
  const AccountTab2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExploreGrid(color: Colors.greenAccent, count: 7,);
  }
}