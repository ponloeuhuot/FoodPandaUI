import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cuisines extends StatelessWidget {
  const Cuisines({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(15),
          ),
          width: 90,
          height: 90,
          padding: EdgeInsets.all(10),
          child: SizedBox(
            height: 70,
            child: Image.asset(
              'lib/photo/coffee.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text('Beverages', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
      ],
    );
  }
}

