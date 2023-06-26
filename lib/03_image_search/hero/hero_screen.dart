import 'package:flutter/material.dart';

class HeroScreen extends StatelessWidget {
  final String tag;
  final String image;
  final String user;
  final String userImageURL;
  final String type;
  final String tags;
  final String likes;

  HeroScreen({
    Key? key,
    required this.tag,
    required this.image,
    required this.user,
    required this.userImageURL,
    required this.type,
    required this.tags,
    required this.likes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('상세 이미지'),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(userImageURL),
              ),
              title: Text(user),
              trailing: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 80,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite_border),
                    ),
                    Text(likes),
                  ],
                ),
              ),
            ),
          ),
          Hero(
            tag: tag,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.network(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          ListTile(
            title: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                'Type: $type',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                'Tags: $tags',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
