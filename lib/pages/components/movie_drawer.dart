import 'package:flutter/material.dart';

class MovieDrawerWidget extends StatelessWidget {
  const MovieDrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // width: double.infinity,
      child: Column(
        children: [
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
    );
  }
}
