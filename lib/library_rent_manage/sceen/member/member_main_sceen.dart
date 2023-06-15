import 'package:flutter/material.dart';
import 'package:flutter_beginner/library_rent_manage/sceen/member/member_find_sceen.dart';

import '../book/book_main_sceen.dart';

class MemberSceen extends StatefulWidget {
  const MemberSceen({Key? key}) : super(key: key);

  @override
  State<MemberSceen> createState() => _MemberSceenState();
}

class _MemberSceenState extends State<MemberSceen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('회원 관리'),
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
                  MaterialPageRoute(builder: (context) => MemberFindScreen()),
                );
              },
              child: Container(
                width: 300,
                child: ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.find_in_page),
                  ),
                  title: Text('1. 회원 조회'),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MemberFindScreen()),
                );
              },
              child: Container(
                width: 300,
                child: ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.app_registration),
                  ),
                  title: Text('2. 회원 등록'),
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
                  title: Text('3. 회원 수정'),
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
                  title: Text('4. 회원 삭제'),
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
                  title: Text('5. 삭제 취소'),
                ),
              ),
            ),
          ],
        ));
  }
}
