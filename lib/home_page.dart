import 'package:flutter/material.dart';

import 'widgets/about_container.dart';
import 'widgets/about_layout_widget.dart';
import 'widgets/about_single_child_scroll_widget.dart';
import 'widgets/about_text_field_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // endDrawer: Drawer(
      //   child: Column(
      //     children: [
      //       Text("End Drawer"),
      //     ],
      //   ),
      // ),
      drawer: Drawer(
        // width: double.infinity,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text("Drawer"),
            // Container(
            //   height: 100,
            //   width: 100,
            //   color: Colors.indigo,
            // ),
            // DrawerHeader(
            //   decoration: BoxDecoration(
            //     color: Colors.blue,
            //   ),
            //   child: Text("Drawer Header"),
            // ),

            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.indigo,
              ),
              accountName: Text("John Doe"),
              accountEmail: Text("jonh.doe@gmail.com"),
              currentAccountPicture: CircleAvatar(
                // child: Image.network('https://picsum.photos/200/300'),
                backgroundImage: NetworkImage(
                  'https://picsum.photos/200/300',
                ),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://picsum.photos/200/300',
                  ),
                ),
              ],
              onDetailsPressed: () {
                print("on detail pressed");
              },
              arrowColor: Colors.white,
            ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              trailing: Icon(Icons.arrow_forward_ios, size: 22),
              onTap: () {
                print("Home");
              },
            ),
            Divider(height: 0),
            ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text("Payment"),
              trailing: Icon(Icons.arrow_forward_ios, size: 22),
              onTap: () {
                print("Payment");
              },
            ),
            Divider(height: 0),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Orders"),
              trailing: Icon(Icons.arrow_forward_ios, size: 22),
              onTap: () {
                print("Orders");
              },
            ),

            // other
            Spacer(), // it take vertical space as much as possible
            ListTile(
              title: Row(
                children: [
                  Text("Version:"),
                  Spacer(), // it take horizontal space as much as possible
                  Text("1.0.0"),
                ],
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('About Container Widget (home)'),
        centerTitle: false,
        actions: [
          Icon(Icons.share),
          Icon(Icons.check),
          Icon(Icons.notifications),
        ],
        backgroundColor: Colors.yellow,
      ),
      // body: AboutContainerWidget(),
      body: AboutLayoutWidget(),
      bottomNavigationBar: BottomNavigationBar(
        // showSelectedLabels: false,
        // showUnselectedLabels: false,
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
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     print("User click!");
      //   },
      //   child: Icon(Icons.add),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class MyBody extends StatelessWidget {
  MyBody({super.key});

  Set<int> segmentValueSet = {1};

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello world 2023"),
            // Button
            ElevatedButton(
              onPressed: () {},
              child: Text("Login"),
            ),
            FilledButton(
              onPressed: () {},
              child: Text("Filled Button"),
            ),
            FilledButton.tonal(
              onPressed: () {},
              child: Text("Filled Button Tonal"),
            ),
            FilledButton.icon(
              onPressed: () {},
              label: Text("Filled Button Tonal"),
              icon: Icon(Icons.person),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text("Outline Button"),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              label: Text("Outline Button"),
              icon: Icon(Icons.person),
            ),
            TextButton.icon(
              onPressed: () {},
              label: Text("Login with Facebook"),
              icon: Icon(Icons.facebook),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.logout),
            ),
            SegmentedButton(
              segments: [
                ButtonSegment<int>(
                  value: 1,
                  icon: Icon(Icons.looks_one),
                ),
                ButtonSegment<int>(
                  value: 2,
                  icon: Icon(Icons.looks_two),
                ),
                ButtonSegment<int>(
                  value: 3,
                  icon: Icon(Icons.looks_two),
                  label: Text("3"),
                ),
              ],
              selected: segmentValueSet,
              onSelectionChanged: (value) {
                print(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
