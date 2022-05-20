import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:mystore/features/bottomnavigationitems/bottomnavigationitems.dart';
import 'package:mystore/features/home_page/presenation/widgets/home_page_view_body.dart';

class HomePageView extends StatefulWidget {
  HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  int selectedindex = 0;
  Color colorpressed = Colors.grey;
  List<Widget> pages = [
    HomePageViewBody(),
    Center(
      child: Text('salwa'),
    ),
    Center(
      child: Text('asmaa'),
    ),
    Center(
      child: Text('atef'),
    ),
    Center(
      child: Text('mohamed'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_basket_sharp,
                color: Colors.black,
              ))
        ],
        title: const Text(
          'Marketna',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: Container(
        clipBehavior: Clip.none,
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 5,
            blurRadius: 20,
            offset: Offset(0, 10),
          )
        ]),
        child: BottomNavigationBar(
          currentIndex: selectedindex,
          onTap: (index) {
            setState(() {
              selectedindex = index;
            });
          },
          selectedItemColor: Colors.brown[600],
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: '',
            ),
          ],
        ),
      ),
      body: pages.elementAt(selectedindex),
    );
  }
}
