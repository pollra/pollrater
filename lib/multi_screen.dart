import 'package:flutter/material.dart';

class MultiPageImage extends StatelessWidget {
  const MultiPageImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/logo_dart.png',
              width: 200,
              height: 200,
            ),
            Text(
              'Dart',
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'goyang',
                  fontWeight: FontWeight.w700
              ),
            ),
            Image.network(
              'https://cdn.pixabay.com/photo/2022/01/23/16/06/dog-6961236_960_720.jpg',
              width: 200,
              height: 200,
            ),
            Text(
              '귀여운 강아지',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w100
              ),
            ),
          ],
        )
      ),
    );
  }
}

class MultiPageRow extends StatelessWidget {
  const MultiPageRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.network(
              'https://cdn.pixabay.com/photo/2013/02/21/19/12/barbecue-84671_960_720.jpg',
              height: 100,
              width: 100,
            ),
            Image.network(
              'https://cdn.pixabay.com/photo/2014/01/24/04/36/roasted-250875_960_720.jpg',
              height: 100,
              width: 100,
            ),
            Image.network(
              'https://cdn.pixabay.com/photo/2015/05/02/00/56/bossam-749357__340.jpg',
              height: 100,
              width: 100,
            ),
          ],
        ),
      ),
    );
  }
}

class MultiPageListView extends StatefulWidget {
  const MultiPageListView({Key? key}) : super(key: key);

  @override
  _MultiPageListViewState createState() => _MultiPageListViewState();
}

class _MultiPageListViewState extends State<MultiPageListView> {

  // 추가됨
  final items = List<String>.generate(20, (index) => 'Item ${index + 1}');
  // final items = List<String>.generate(20, (index) { return "Item ${index + 1}";});

  // 추가됨
  void _itemAdd() {
    setState(() {
      items.add('Item ${items.length + 1}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            title: Text(
              '${item}',
              style: TextStyle(
                fontFamily: 'goyang',
                fontWeight: FontWeight.w700,
                fontSize: 20
              ),
            ),
          );
        }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          items.add('Item ${items.length + 1}');
        }),  // 변경됨
        child: Icon(Icons.plus_one),
      ),
    );
  }
}

