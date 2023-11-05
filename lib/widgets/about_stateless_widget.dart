import 'package:flutter/material.dart';

class NewStatelessWidget extends StatelessWidget {
  const NewStatelessWidget({Key? key, required this.name}) : super(key: key);

  final String name; // non-nullable

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(
        fontSize: 24,
        decoration: TextDecoration.underline,
      ),
    );
  }
}

class InteractiveWidget extends StatefulWidget {
  const InteractiveWidget({super.key});

  @override
  State<InteractiveWidget> createState() => _InteractiveWidgetState();
}

class _InteractiveWidgetState extends State<InteractiveWidget> {
  late Color color; // late means it will be initialized later

  // pure dart code
  @override
  void initState() {
    super.initState();
    color = Colors.black;
    print('initState()');

    // don't use setState() here
    setState(() {
      color = Colors.red;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          color = Colors.red;
        });
      },
      child: Text(
        "Click me",
        style: TextStyle(
          color: color,
        ),
      ),
    );
  }
}
