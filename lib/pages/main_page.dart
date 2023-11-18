import 'package:flutter/material.dart';
import 'package:flutter_demo_app/pages/accounts/account_page.dart';
import 'package:flutter_demo_app/pages/favorites/favorite_page.dart';
import 'package:flutter_demo_app/pages/histories/history_page.dart';
import 'package:flutter_demo_app/pages/home/home_page.dart';

import 'components/movie_drawer.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late final PageController _pageController;

  int currentIndex = 0;

  final List<Widget> _children = [
    HomePage(),
    FavoritePage(),
    HistoryPage(),
    AccountPage(),
  ];

  @override
  void initState() {
    _pageController = PageController(
      initialPage: currentIndex,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MovieDrawerWidget(),
      appBar: AppBar(
        title: Text('Top Movie in Khmer'),
        centerTitle: false,
        actions: [
          Icon(Icons.search),
          Icon(Icons.notifications),
        ],
        backgroundColor: Colors.yellow,
      ),
      // body: _children[currentIndex],
      // body: IndexedStack(
      //   index: currentIndex,
      //   children: _children,
      // ),
      body: PageView.builder(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        itemCount: _children.length,
        itemBuilder: (context, index) {
          return _children[index];
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
          _pageController.jumpToPage(index);
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            tooltip: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorite",
            tooltip: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: "History",
            tooltip: "History",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Account",
            tooltip: "Account",
          ),
        ],
      ),
    );
  }
}
