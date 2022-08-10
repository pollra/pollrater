import 'package:flutter/material.dart';
import 'package:pollrater_example_01/multi_screen.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () => {
                  Navigator.pop(context)
                },
                icon: Icon(Icons.arrow_back)
            ),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.image)),
                Tab(icon: Icon(Icons.arrow_forward_sharp)),
                Tab(icon: Icon(Icons.list)),
              ]
            ),
            title: Text('Tabs Demo'),
          ),
          body: const TabBarView(
              children: [
                MultiPageImage(),
                MultiPageRow(),
                MultiPageListView()
              ]
          ),
        ),
      ),
    );
  }
}
