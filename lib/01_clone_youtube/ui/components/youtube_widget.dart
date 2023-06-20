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
                child: Container(
                  child: Text(
                    shortsName,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
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
