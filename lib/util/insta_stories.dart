import 'package:flutter/material.dart';

class InstaStories extends StatelessWidget {

  final String? text;
  const InstaStories(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            child: ClipRRect(
              child: Image.asset('images/jayesh.jpg'),
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
          const SizedBox(
            height: 10
          ),
          Text(text!)
        ],
      ),
    );
  }
}
