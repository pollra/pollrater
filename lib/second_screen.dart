
import 'package:flutter/material.dart';
import 'package:pollrater_example_01/third_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('second screen'),
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
                    const Text('여기는 두번째 화면 입니다'),
                    Padding(
                      padding: EdgeInsets.all(50)
                    ),
                    ElevatedButton(
                        onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const ThirdScreen()
                          )
                        ),
                        // onPressed: () =>{},
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
