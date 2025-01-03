import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShopCard extends StatelessWidget {
  const ShopCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: MediaQuery.of(context).size.width *0.75,
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                //width: MediaQuery.of(context).size.width *0.75,
                height: 180,
                decoration: const BoxDecoration(
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'lib/photo/drinkkoi.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 15,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                  ),
                  child: const Text(
                    '14% OFF Min 12 (Code:13)',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 15,
                left: 15,
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.white,
                  ),
                  child: const Text('15min'),
                ),
              )
            ],
          ),
          const SizedBox(height: 10,),
          const Text('KOI the IFL'),
          const SizedBox(height: 2,),
          const Text('\$\$\$ Beverage, Mile Tea',style: TextStyle(color: Colors.grey),),
          const SizedBox(height: 2,),
          const Text('\$ 0.74 delivery fee'),
        ],
      ),
    );
  }
}
