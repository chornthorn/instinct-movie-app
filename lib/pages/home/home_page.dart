import 'package:flutter/material.dart';

import 'home_body_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeBodyWidget(),
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
