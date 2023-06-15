import 'package:flutter/material.dart';

import '../components/youtube_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: Image.network(
            'https://www.youtube.com/s/desktop/3515f74b/img/favicon_144x144.png'),
        title: Text(
          'Youtube',
        ),
        backgroundColor: Colors.black,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.add_alert,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.video_call_rounded,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
            ),
          ),
          CircleAvatar(
            backgroundImage: NetworkImage(
              'https://lh3.google.com/u/1/ogw/AOLn63EH2PgIwVH0MpP4EMCDnDrf9l9waZFxOg5h_xuB=s64-c-mo',
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.explore,
            ),
            label: 'Short',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle_outline,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions),
            label: '구독',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_add),
            label: '보관함',
          ),
        ],
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Expanded(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      width: 50,
                      height: 30,
                      child: Icon(
                        Icons.explore_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        width: 50,
                        height: 30,
                        child: Center(
                          child: Text(
                            '전체',
                            style: TextStyle(fontSize: 16),
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      width: 50,
                      height: 30,
                      child: Center(
                        child: Text(
                          '뉴스',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      width: 50,
                      height: 30,
                      child: Center(
                        child: Text(
                          '게임',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      width: 50,
                      height: 30,
                      child: Center(
                        child: Text(
                          '음악',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      width: 50,
                      height: 30,
                      child: Center(
                        child: Text(
                          '야구',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      width: 50,
                      height: 30,
                      child: Center(
                        child: Text(
                          '실시간',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      height: 30,
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Center(
                          child: Text(
                            '만화영화',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      width: 50,
                      height: 30,
                      child: Center(
                        child: Text(
                          '축구',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 1, // 아이템 개수 설정
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          child: Image.network(
                            'http://img.youtube.com/vi/V0eBEf9mD_8/mqdefault.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 5,
                          right: 5,
                          child: Container(
                            padding: EdgeInsets.all(4),
                            color: Colors.black.withOpacity(0.5),
                            child: Text(
                              '16:21',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://yt3.ggpht.com/ytc/AGIKgqN5x06uPtKiqcBiK8H5uiaesPlQcFxujuuKNiOeMA=s88-c-k-c0x00ffffff-no-rj',
                        ),
                      ),
                      title: Text(
                        '스파6 - 세번 잡히면 죽습니다',
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Row(
                        children: [
                          Text(
                            '아빠킹',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            ' · ',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            '조회수 4만회',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            ' · ',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            '9시간 전',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          child: Image.network(
                            'http://img.youtube.com/vi/_m-Hv2GZ0oE/mqdefault.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 5,
                          right: 5,
                          child: Container(
                            padding: EdgeInsets.all(4),
                            color: Colors.black.withOpacity(0.5),
                            child: Text(
                              '13:46',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://yt3.ggpht.com/ytc/AGIKgqO7Bd48gW5Yi6s3QgAyGL9b-I5f6scgnQhW50ug=s88-c-k-c0x00ffffff-no-rj',
                        ),
                      ),
                      title: Text(
                        '[뚜데] #27 "전기차 시기상조 맞습니다" 반년 타본 개발자의 솔직 후기 (소신발언 포함)',
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Row(
                        children: [
                          Text(
                            '판교 뚜벅쵸',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            ' · ',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            '조회수 8.5만회',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            ' · ',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            '2개월 전',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(
                            Icons.explore_outlined,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            'Shorts',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          child: Image.network(
                            'http://img.youtube.com/vi/Q4DXkt_efS0/mqdefault.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 5,
                          right: 5,
                          child: Container(
                            padding: EdgeInsets.all(4),
                            color: Colors.black.withOpacity(0.5),
                            child: Text(
                              '25:12',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://yt3.ggpht.com/K74Og8dqtK72UXy-ySJsXMZuMV4M71dCNQmIIOcPkzYHfdHvsUndE31Lbm1znSNVWcffJ_RP=s88-c-k-c0x00ffffff-no-rj',
                        ),
                      ),
                      title: Text(
                        '교수님 오늘이 축제인 거 알고 계십니까? [한양대 신소재공학과]ㅣ전과자 ep.27',
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Row(
                        children: [
                          Text(
                            'ootb STUDIO',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            ' · ',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            '조회수 4.4만회',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            ' · ',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            '25분 전',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
