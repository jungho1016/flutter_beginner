import 'package:flutter/material.dart';
import '../hero/hero_screen.dart';
import '../model/image.dart';
import 'image_search_view_model.dart';

class ImageSearchScreen extends StatefulWidget {
  ImageSearchScreen({Key? key}) : super(key: key);

  @override
  State<ImageSearchScreen> createState() => _ImageSearchScreenState();
}

class _ImageSearchScreenState extends State<ImageSearchScreen> {
  TextEditingController controller = TextEditingController();
  ImageSearchViewModel imageSearchViewModel = ImageSearchViewModel();
  List<ImageView> imageList = [];

  @override
  void initState() {
    super.initState();
    fetchImageList();
  }

  Future<void> fetchImageList() async {
    List<ImageView> list = await imageSearchViewModel.getImage();
    setState(() {
      imageList = list;
    });
  }

  Future<void> searchImages(String query) async {
    List<ImageView> list = await imageSearchViewModel.searchImages(query);
    setState(() {
      imageList = list;
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('이미지 검색 앱'),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: controller,
              cursorColor: Colors.teal,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.teal, width: 1),
                ),
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    String query = controller.text;
                    searchImages(query);
                  },
                ),
                suffixIconColor: Colors.blue,
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemCount: imageList.length,
              itemBuilder: (context, index) {
                ImageView image = imageList[index];
                return Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HeroScreen(
                                  tag: '${imageList[index].id},',
                                  image: '${image.webformatURL}',
                                  user: '${imageList[index].user}',
                                  userImageURL:
                                      '${imageList[index].userImageURL}',
                                  type: '${imageList[index].type}',
                                  tags: '${imageList[index].tags}',
                                  likes: '${imageList[index].likes}',
                                )),
                      );
                    },
                    child: Hero(
                      tag: imageList[index].id,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        elevation: 4.0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          child: Image.network(
                            '${image.webformatURL}',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
