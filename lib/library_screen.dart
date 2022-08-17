import 'package:flutter/material.dart';
import 'package:pollrater_example_01/library_detail_screen.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({Key? key}) : super(key: key);

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  List<BookTile> books = [
    BookTile(
      title2: "도메인 주도 설계 구현",
      imagePath:
          "http://image.yes24.com/momo/TopCate730/MidCate008/72970596.jpg",
    ),
    BookTile(
        // title: "플러터 인 액션",
        // imagePath: "http://image.yes24.com/goods/97008810/XL",
        ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("도서 목록 앱"),
      ),
      body: ListView(children: books),
    );
  }
}

class BookTile extends StatelessWidget {
  String? title;
  String? imagePath;

  BookTile({
    Key? key,
    String? title2,
    this.imagePath,
  }) : super(key: key) {
    this.title = title2 ?? '개굴개굴';
    this.imagePath = this.imagePath ??
        "http://image.dongascience.com/Photo/2020/10/1f1102018a98fd01f1b7d2d752039e17.jpg";
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
      child: ListTile(
        title: Text(this.title!),
        leading: Image.network(this.imagePath!),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => LibraryDetailScreen(title: this.title!, imagePath: this.imagePath!))
          );
        },
      ),
    );
  }
}
