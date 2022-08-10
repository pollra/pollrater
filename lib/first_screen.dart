import 'package:flutter/material.dart';
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
              child: Padding(
                padding: const EdgeInsets.all(80),
                child: Column(
                  children: [
                    const Text('여기는 첫번째 화면 입니다'),
                    Padding(padding: EdgeInsets.all(50)),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => SecondScreen(),
                            )
                          );
                        },
                        child: const Text('페이지 이동')
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
