import 'package:flutter/material.dart';

class Search_bar extends StatelessWidget {
  const Search_bar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      margin: const EdgeInsets.fromLTRB(
        15, 5, 15, 15,
      ),
      child: const Row(
        children: [
          SizedBox(width: 15,),
          Icon(Icons.search),
          SizedBox(width: 15,),
          Text("search for shop & restaurant ",style: TextStyle(fontSize: 14),)
        ],
      ),
    );
  }
}
