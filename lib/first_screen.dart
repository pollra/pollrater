import 'package:flutter/material.dart';
import 'package:pollrater_example_01/library_screen.dart';
import 'package:pollrater_example_01/second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('first screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: SizedBox(
                height: 180,
                width: 250,
                child: Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    children: [
                      const Text('여기는 첫번째 화면 입니다'),
                      Padding(padding: EdgeInsets.all(10)),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SecondScreen(),
                            ));
                          },
                          child: const Text('페이지 이동'))
                    ],
                  ),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.all(20)),
            Card(
              child: SizedBox(
                height: 180,
                width: 250,
                child: Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    children: [
                      const Text('도서 확인 앱'),
                      Padding(padding: EdgeInsets.all(10)),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LibraryScreen(),
                            ));
                          },
                          child: const Text('앱 이동'))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
