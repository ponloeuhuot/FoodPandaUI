import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_panda_app/view/home/widgets/cuisines.dart';
import 'package:food_panda_app/view/home/widgets/my_drawer.dart';
import 'package:food_panda_app/view/home/widgets/search_bar.dart';
import 'package:food_panda_app/view/home/widgets/shop_card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '2 St 662',
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
            Text(
              'Phnom Penh',
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          ],
        ),
        titleSpacing: 0,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_bag, color: Colors.white),
          ),
        ],
      ),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overScroll) {
          overScroll.disallowIndicator();
          return true;
        },
        child: CustomScrollView(
          slivers: [
            const SliverAppBar(
              automaticallyImplyLeading: false,

              pinned: true,
              expandedHeight: 55,
              backgroundColor: Colors.pink,
              flexibleSpace: FlexibleSpaceBar(
                // centerTitle: true,
                // title: const Text('Professional',
                //     style: TextStyle(
                //       color: Colors.white,
                //       fontSize: 16.0,
                //     )),
                background: Search_bar(),
              ),
              //backgroundColor: Colors.blue,
            ),

            SliverToBoxAdapter(
              child: Container(
                height: 160,
                margin: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Colors.white,
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    onTap: (){},
                    splashColor:Colors.pink,
                    splashFactory: InkSparkle.constantTurbulenceSeedSplashFactory,
                    child: Container(
                      padding: EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Food Delivery', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold ),),
                              Text('order food you love')
                            ],
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Expanded(
                              child: Container(
                                height: 80,
                                child: Image.asset('lib/photo/turkey.png'),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: Row(
                children: [
                  Expanded(
                    flex:1,
                    child: Container(
                      height: 170,
                        padding: const EdgeInsets.all(15),
                      margin: const EdgeInsets.only(left: 15, right: 7.5),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Shop', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text("Groceries, SEA Game merchandise and more",style: TextStyle(fontSize: 13,),),
                            ],
                          ),

                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                                child: Image.asset(
                                  'lib/photo/grocery.png',
                                  height: 70,
                                ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Expanded(
                    flex:1,
                    child: Container(
                      height: 170,
                      padding: const EdgeInsets.all(15),
                      margin: const EdgeInsets.only(left: 7.5, right: 15),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Pick-up',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text("Up to 50%"),
                            ],
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              child: Image.asset(
                                'lib/photo/pickup.png',
                                height: 90,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),

            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(left: 15, top: 15),
                child: Text('Your Restaurant',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                  ),
                ),
              ),
            ),
            
            SliverToBoxAdapter(
              child: SizedBox(
                height: 285,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                  itemBuilder: (context, index){
                    return ShopCard();
                  },),
              ),
            ),

            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
                child: Text('Cuisines',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: SizedBox(
                height: 240,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                    ),
                  itemBuilder: (context, index){
                      return Cuisines();
                  }),
              ),
            ),

            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
                child: Text('Shops',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: SizedBox(
                height: 120,
                child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                    ),
                    itemBuilder: (context, index){
                      return Cuisines();
                    }),
              ),
            ),

          ],
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}

