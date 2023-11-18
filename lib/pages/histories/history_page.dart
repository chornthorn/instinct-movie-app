import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage>
    with AutomaticKeepAliveClientMixin<HistoryPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    print('HistoryPage calling api');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('History Page'),
      ),
      body: Container(
        child: Text("History Page"),
      ),
    );
  }
}
