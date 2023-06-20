import 'package:flutter/material.dart';

class TopCategoly extends StatelessWidget {
  final String text;
  final Color boxColor;
  final Color textColor;
  const TopCategoly(
      {Key? key,
      required this.text,
      required this.boxColor,
      required this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          decoration: BoxDecoration(
            color: boxColor,
            border: Border.all(),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          width: 50,
          height: 30,
          child: Center(
            child: Text(
              text,
              style: TextStyle(fontSize: 16, color: textColor),
            ),
          )),
    );
  }
}

class thumbnail extends StatelessWidget {
  final String imageUrl;
  final String videotime;
  const thumbnail({Key? key, required this.imageUrl, required this.videotime})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          child: Image.network(
            imageUrl,
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
              videotime,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class VideoInformation extends StatelessWidget {
  final String youTuberimage;
  final String title;
  final String name;
  final String views;
  final String beforUploadTime;

  const VideoInformation(
      {Key? key,
      required this.youTuberimage,
      required this.title,
      required this.name,
      required this.views,
      required this.beforUploadTime})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
          youTuberimage,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      subtitle: Row(
        children: [
          Text(
            name,
            style: TextStyle(color: Colors.grey),
          ),
          Text(
            ' · ',
            style: TextStyle(color: Colors.grey),
          ),
          Text(
            '조회수 ${views}회',
            style: TextStyle(color: Colors.grey),
          ),
          Text(
            ' · ',
            style: TextStyle(color: Colors.grey),
          ),
          Text(
            '${beforUploadTime} 전',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

class Shorts extends StatelessWidget {
  final String shortsImage;
  final String shortsName;
  final String shortsViews;

  const Shorts(
      {Key? key,
      required this.shortsImage,
      required this.shortsName,
      required this.shortsViews})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            width: 140,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  shortsImage,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 2,
          bottom: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  shortsName,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  '조회수 ${shortsViews}회',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class item extends StatelessWidget {
  const item({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  shortsName: '[젤다 왕눈]패러세일 없이 \n지저 내려가기ㅋㅋㅋㅋ #shorts',
                  shortsViews: '11만',
                ),
                Shorts(
                  shortsImage:
                      'https://i.ytimg.com/vi/BQM-6y9-Awg/oar2.jpg?sqp=-oaymwEaCJUDENAFSFXyq4qpAwwIARUAAIhCcAHAAQY=&rs=AOn4CLC8_XhqUMnbhEzL24Jfkt1Vg3gxQw',
                  shortsName: '한국 남자 혼자 밤 10시 쯤 \n시부야를 혼자 걸으면 듣는 다는 그 말 🇯🇵 ',
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
          imageUrl: 'http://img.youtube.com/vi/V0eBEf9mD_8/mqdefault.jpg',
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
          imageUrl: 'http://img.youtube.com/vi/_m-Hv2GZ0oE/mqdefault.jpg',
          videotime: '13:46',
        ),
        VideoInformation(
          youTuberimage:
              'https://yt3.ggpht.com/ytc/AGIKgqO7Bd48gW5Yi6s3QgAyGL9b-I5f6scgnQhW50ug=s88-c-k-c0x00ffffff-no-rj',
          title: '[뚜데] #27 "전기차 시기상조 맞습니다" 반년 타본 개발자의 솔직 후기 (소신발언 포함)',
          name: '판교 뚜벅쵸',
          views: '8.5만',
          beforUploadTime: '2개월 전',
        ),
        thumbnail(
          imageUrl: 'http://img.youtube.com/vi/Q4DXkt_efS0/mqdefault.jpg',
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
  }
}
