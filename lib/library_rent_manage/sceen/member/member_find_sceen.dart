import 'package:flutter/material.dart';
import 'package:flutter_beginner/library_rent_manage/model/member.dart';
import '../../repository/member_repository.dart';

class MemberFindScreen extends StatefulWidget {
  const MemberFindScreen({Key? key}) : super(key: key);

  @override
  State<MemberFindScreen> createState() => _MemberFindScreenState();
}

class _MemberFindScreenState extends State<MemberFindScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('회원 조회'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: '회원 조회',
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1.0,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: ElevatedButton(
              onPressed: () {},
              child: Text('검색'),
            ),
          ),
          // Display search results
        ],
      ),
    );
  }
}
