import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(

      width: MediaQuery.of(context).size.width * 0.8,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4CRKPij6o2waFROp-89BCE8lEf96jLsndRQ&s',
                  fit: BoxFit.cover,
                ),
              ),
              otherAccountsPictures: [],
              currentAccountPictureSize: const Size.square(50),
              accountName: null,
              accountEmail: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Ponloeu Huot",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("Personal Account"),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Switch',
                      ),
                      style: ButtonStyle(
                          elevation: MaterialStateProperty.all(0),
                          side: MaterialStateProperty.all(const BorderSide(
                            color: Colors.white,
                          )),
                          shape: MaterialStateProperty.all(
                            const RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                          )),
                    ),
                  ],
                ),
              )),
          //Divider(color: Colors.pink,),

          const ListTile(
            title: Text('Become a pandapro'),
            leading: Icon(Icons.paid_outlined),
          ),
          const ListTile(
            title: Text('Voucher & Officer'),
            leading: Icon(Icons.receipt_long),
          ),
          const ListTile(
            title: Text('Favorite'),
            leading: Icon(Icons.favorite),
          ),
          const ListTile(
            title: Text('Profile'),
            leading: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}

