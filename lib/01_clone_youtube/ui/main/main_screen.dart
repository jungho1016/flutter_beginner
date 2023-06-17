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
              'https://yt3.ggpht.com/yti/AHyvSCDoFccJAOqPQN50_kd7D1l-T1ArHd8Pvmfmeg=s88-c-k-c0x00ffffff-no-rj-mo',
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
                  TopCategoly(
                    text: '전체',
                    boxColor: Colors.white,
                    textColor: Colors.black,
                  ),
                  TopCategoly(
                    text: '뉴스',
                    boxColor: Colors.grey,
                    textColor: Colors.white,
                  ),
                  TopCategoly(
                    text: '게임',
                    boxColor: Colors.grey,
                    textColor: Colors.white,
                  ),
                  TopCategoly(
                    text: '음악',
                    boxColor: Colors.grey,
                    textColor: Colors.white,
                  ),
                  TopCategoly(
                    text: '축구',
                    boxColor: Colors.grey,
                    textColor: Colors.white,
                  ),
                  TopCategoly(
                    text: '야구',
                    boxColor: Colors.grey,
                    textColor: Colors.white,
                  ),
                  TopCategoly(
                    text: '농구',
                    boxColor: Colors.grey,
                    textColor: Colors.white,
                  ),
                  TopCategoly(
                    text: '영화',
                    boxColor: Colors.grey,
                    textColor: Colors.white,
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
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Expanded(
                        child: Row(
                          children: [
                            Shorts(
                              shortsImage:
                                  'https://i.ytimg.com/vi/66mIWo9Vqpc/hq720.jpg?sqp=-oaymwEdCJUDENAFSFXyq4qpAw8IARUAAIhCcAHAAQbQAQE=&rs=AOn4CLBwusM8Uu61GHbKufAEgXxVsoPOZA',
                              shortsName:
                                  '[젤다 왕눈]패러세일 없이 \n지저 내려가기ㅋㅋㅋㅋ #shorts',
                              shortsViews: '11만',
                            ),
                            Shorts(
                              shortsImage:
                                  'https://i.ytimg.com/vi/BQM-6y9-Awg/oar2.jpg?sqp=-oaymwEaCJUDENAFSFXyq4qpAwwIARUAAIhCcAHAAQY=&rs=AOn4CLC8_XhqUMnbhEzL24Jfkt1Vg3gxQw',
                              shortsName:
                                  '한국 남자 혼자 밤 10시 쯤 \n시부야를 혼자 걸으면 듣는 다는 그 말 🇯🇵 ',
                              shortsViews: '211만',
                            ),
                            Shorts(
                              shortsImage:
                                  'https://i.ytimg.com/vi/sUUOBtYBM8o/oar2.jpg?sqp=-oaymwEaCJUDENAFSFXyq4qpAwwIARUAAIhCcAHAAQY=&rs=AOn4CLD7-_RJj6n2BP1KLVzW5QGt1oJcHg',
                              shortsName: '크리스 범스테드 역시 \n사람인 이유!',
                              shortsViews: '81만',
                            ),
                            Shorts(
                              shortsImage:
                                  'https://i.ytimg.com/vi/MRrtksYAUdM/oar2.jpg?sqp=-oaymwEaCJUDENAFSFXyq4qpAwwIARUAAIhCcAHAAQY=&rs=AOn4CLBRTpM_5kM3v53vDfOzafwnfEprCQ',
                              shortsName: '키 162에 덩크하려고 \n다리만 키우는 남자',
                              shortsViews: '265만',
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    thumbnail(
                      imageUrl:
                          'http://img.youtube.com/vi/V0eBEf9mD_8/mqdefault.jpg',
                      videotime: '16:21',
                    ),
                    VideoInformation(
                      youTuberimage:
                          'https://yt3.ggpht.com/ytc/AGIKgqN5x06uPtKiqcBiK8H5uiaesPlQcFxujuuKNiOeMA=s88-c-k-c0x00ffffff-no-rj',
                      title: '스파6 - 세번 잡히면 죽습니다',
                      name: '아빠킹',
                      views: '4만',
                      beforUploadTime: '9시간',
                    ),
                    thumbnail(
                      imageUrl:
                          'http://img.youtube.com/vi/_m-Hv2GZ0oE/mqdefault.jpg',
                      videotime: '13:46',
                    ),
                    VideoInformation(
                      youTuberimage:
                          'https://yt3.ggpht.com/ytc/AGIKgqO7Bd48gW5Yi6s3QgAyGL9b-I5f6scgnQhW50ug=s88-c-k-c0x00ffffff-no-rj',
                      title:
                          '[뚜데] #27 "전기차 시기상조 맞습니다" 반년 타본 개발자의 솔직 후기 (소신발언 포함)',
                      name: '판교 뚜벅쵸',
                      views: '8.5만',
                      beforUploadTime: '2개월 전',
                    ),
                    thumbnail(
                      imageUrl:
                          'http://img.youtube.com/vi/Q4DXkt_efS0/mqdefault.jpg',
                      videotime: '25:12',
                    ),
                    VideoInformation(
                      youTuberimage:
                          'https://yt3.ggpht.com/K74Og8dqtK72UXy-ySJsXMZuMV4M71dCNQmIIOcPkzYHfdHvsUndE31Lbm1znSNVWcffJ_RP=s88-c-k-c0x00ffffff-no-rj',
                      title: '교수님 오늘이 축제인 거 알고 계십니까? [한양대 신소재공학과]ㅣ전과자 ep.27',
                      name: 'ootb STUDIO',
                      views: '4.4만',
                      beforUploadTime: '25분 전',
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
