import 'package:flutter/material.dart';

class AboutSingleChildScroll extends StatefulWidget {
  const AboutSingleChildScroll({super.key});

  @override
  State<AboutSingleChildScroll> createState() => _AboutSingleChildScrollState();
}

class _AboutSingleChildScrollState extends State<AboutSingleChildScroll> {
  final _scrollController = ScrollController();

  bool _showGoTopButton = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  // listen to scroll controller
  void _scrollListener() {
    print(_scrollController.offset);
    if (_scrollController.offset >= 200) {
      setState(() {
        _showGoTopButton = true;
      });
    } else {
      setState(() {
        _showGoTopButton = false;
      });
    }
  }

  // @override
  // void dispose() {
  //   _scrollController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        scrollDirection: Axis.vertical,
        // physics: NeverScrollableScrollPhysics(),
        // physics: BouncingScrollPhysics(),
        // physics: ClampingScrollPhysics(),
        // physics: AlwaysScrollableScrollPhysics(),
        reverse: false, // reverse the scroll direction
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 200,
              color: Colors.indigo,
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 200,
              color: Colors.pink,
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 200,
              color: Colors.yellow,
            ),
            // Spacer(),
            //Expanded(child: child),
            Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 200,
              color: Colors.blue,
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 200,
              color: Colors.green,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 200,
                    height: 200,
                    color: Colors.pink,
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 200,
                    height: 200,
                    color: Colors.yellow,
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 200,
                    height: 200,
                    color: Colors.blue,
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 200,
                    height: 200,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: _showGoTopButton
          ? FloatingActionButton(
              onPressed: () {
                print("User click!");
                _scrollController.animateTo(
                  0,
                  duration: Duration(milliseconds: 1000),
                  curve: Curves.easeIn,
                );
              },
              child: Icon(Icons.arrow_upward),
            )
          : null,
    );
  }
}
