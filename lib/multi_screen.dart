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
              'assets/images/ryan_humchit.jpg',
              width: 200,
              height: 200,
            ),
            Text(
              '오메 시발',
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'mabinogi',
                  fontWeight: FontWeight.w100
              ),
            ),
            Image.network(
              'https://pbs.twimg.com/media/EWN1WyjUwAITV43?format=jpg&name=medium',
              width: 200,
              height: 200,
            ),
            Text(
              '긁적..',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'mabinogi',
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
              'https://i.pinimg.com/564x/91/56/20/91562061d808c3b4d805233c11e1544e.jpg',
              height: 100,
              width: 100,
            ),
            Image.network(
              'https://i.pinimg.com/564x/a6/56/c4/a656c43ed8c2c476164fe8e60f4a296c.jpg',
              height: 100,
              width: 100,
            ),
            Image.network(
              'https://i.pinimg.com/564x/d7/fe/e3/d7fee374ade588083060e5296e7cd32a.jpg',
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
  void _itemPlus() {
    setState(() {
      items.add('Item ${items.length+1}');
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
                fontFamily: 'mabinogi',
                fontWeight: FontWeight.w100,
                fontSize: 20
              ),
            ),
          );
        }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          items.add('Item ${items.length+1}');
        }),  // 변경됨
        child: Icon(Icons.plus_one),
      ),
    );
  }
}

