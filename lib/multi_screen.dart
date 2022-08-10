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
              'assets/images/한쫑이.jpeg',
              width: 100,
              height: 200,
            ),
            Text(
              '멀티 이미지 ABCD',
              style: TextStyle(fontSize: 20),
            ),
            Image.network(
                'https://pbs.twimg.com/media/EWN1WyjUwAITV43?format=jpg&name=medium',
              width: 100,
              height: 100,
            ),
            Text(
              '멀티 긁적ABCD',
              style: TextStyle(
                  fontFamily: 'huntera',
                  fontSize: 20,
              ),
            ),
          ],
        ),
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.network(
              'https://image.newdaily.co.kr/site/data/img/2022/02/24/2022022400156_0.jpg',
              width: 100,
              height: 100,
            ),
            Image.network(
              'https://image.newdaily.co.kr/site/data/img/2022/02/24/2022022400156_0.jpg',
              width: 100,

              height: 100,
            ),
            Image.network(
              'https://image.newdaily.co.kr/site/data/img/2022/02/24/2022022400156_0.jpg',
              width: 100,
              height: 100,
            ),
            Image.network(
              'https://image.newdaily.co.kr/site/data/img/2022/02/24/2022022400156_0.jpg',
              width: 100,
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}

class MultiPageListView extends StatefulWidget {
  const MultiPageListView({Key? key}) : super(key: key);

  @override
    State<MultiPageListView> createState() => _MultiListView();
  // Widget build(BuildContext context) {
    // return const Scaffold(
    //   body: Center(
    //     child: Text(
    //       'MultiPage_C',
    //       style: TextStyle(fontSize: 30),
    //     ),
    //   ),
    // );
  // }
}

class _MultiListView extends State<MultiPageListView> {

  final items = List<String>.generate(20, (index)  => "Item ${index + 1}");

  void _plusOne() {
    setState(() {
      items.add("Item ${items.length + 1}");
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
                fontFamily: 'huntera',
                fontWeight: FontWeight.w600,
                fontSize: 20
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _plusOne();
        },
        child: Icon(Icons.plus_one),
      ),
    );
  }
}

