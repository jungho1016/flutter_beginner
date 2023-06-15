import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_beginner/library_rent_manage/sceen/book/book_main_sceen.dart';
import 'package:flutter_beginner/library_rent_manage/sceen/member/member_main_sceen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('도서 대출 관리 프로그램')),
        body: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MemberSceen()),
                );
              },
              child: Container(
                width: 300,
                child: ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.people),
                  ),
                  title: Text('1. 회원 관리'),
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
                    child: Icon(Icons.book),
                  ),
                  title: Text('2. 도서 관리'),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                SystemNavigator.pop();
              },
              child: Container(
                width: 300,
                child: ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.dangerous),
                  ),
                  title: Text('3. 종료'),
                ),
              ),
            ),
          ],
        ));
  }
}
