import 'package:flutter/material.dart';

class BookScreen extends StatefulWidget {
  const BookScreen({Key? key}) : super(key: key);

  @override
  State<BookScreen> createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('도서 관리'),
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: 300,
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.arrow_back),
                ),
                title: Text('0. 뒤로'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BookScreen()),
              );
            },
            child: Container(
              width: 300,
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.find_in_page),
                ),
                title: Text('1. 대출 도서'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BookScreen()),
              );
            },
            child: Container(
              width: 300,
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.app_registration),
                ),
                title: Text('2. 도서 조회'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BookScreen()),
              );
            },
            child: Container(
              width: 300,
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.refresh),
                ),
                title: Text('3. 도서 등록'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BookScreen()),
              );
            },
            child: Container(
              width: 300,
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.delete_forever),
                ),
                title: Text('4. 도서 수정'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BookScreen()),
              );
            },
            child: Container(
              width: 300,
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.auto_delete),
                ),
                title: Text('5. 도서 삭제'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BookScreen()),
              );
            },
            child: Container(
              width: 300,
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.auto_delete),
                ),
                title: Text('6. 삭제 취소'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
