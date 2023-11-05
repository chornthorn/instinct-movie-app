import 'package:flutter/material.dart';

class AboutContainerWidget extends StatelessWidget {
  const AboutContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 200,
            height: 200,
            // color: Colors.indigo,
            alignment: Alignment.center,
            margin: EdgeInsets.all(32),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.circular(8),
              // shape: BoxShape.circle,
              border: Border.all(
                color: Colors.indigo,
                width: 2,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 8,
                  offset: Offset(2, 2),
                ),
              ],
            ),
            child: Text("About Container"),
            // child: Column(
            //   children: [
            //     // cover image
            //     Text(
            //       "Container Widget, this is a text, this",
            //       style: TextStyle(
            //         color: Colors.white,
            //       ),
            //     ),
            //   ],
            // ),
          ),
        ],
      ),
    );
  }
}
