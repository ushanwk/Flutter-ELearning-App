import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:e_learning_app/constants.dart';
import 'package:e_learning_app/model/product_model.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    return Scaffold(
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedIndex,
        showElevation: true, // use this to remove appBar's elevation
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.apps),
            title: Text('Home'),
            activeColor: Colors.red,
          ),
          BottomNavyBarItem(
              icon: Icon(Icons.people),
              title: Text('Users'),
              activeColor: Colors.purpleAccent
          ),
          BottomNavyBarItem(
              icon: Icon(Icons.message),
              title: Text('Messages'),
              activeColor: Colors.pink
          ),
          BottomNavyBarItem(
              icon: Icon(Icons.settings),
              title: Text('Settings'),
              activeColor: Colors.blue
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: (){},
                      icon: const Icon(
                          Icons.dashboard_customize_rounded,
                        color: kblue,
                      ),
                  ),
                  IconButton(
                    onPressed: (){},
                    icon: const Icon(
                      Icons.search_rounded,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi Ushan',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Today is a Good day\nto learn something new !',
                            style: TextStyle(
                                color: Colors.black54,
                                height: 1.5,
                                fontSize: 13,
                                fontWeight: FontWeight.w700
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              color: kpurple,
                              borderRadius: BorderRadius.circular(15)
                            ),
                            child: Image.asset('assest/image/profile.png'),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                          color: kpink,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: const Text(
                            'Top',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        child: const Text(
                          'Design',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        child: const Text(
                          'Marketing',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                         height: 20,
                          child: Image.asset('assest/icon/sort.png'),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                          'Categories',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: const Text(
                          'See All',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: kblue
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemCount: products.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 0.85), itemBuilder: (context,index)=>CategoryCard(product: products[index],)
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.product});
final Product product;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: product.color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Image.asset(product.image,height: 100),
            const SizedBox(
              height: 10,
            ),
            Text(product.title,style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Colors.white),),
            Text("${product.courses} courses",style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.white70),),
          ],
        ),
      ),
    );
  }
}

