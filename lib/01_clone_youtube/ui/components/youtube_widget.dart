import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTop(),
        _buildBottom(),
        Text('3'),
        Text('4'),
        Text('5'),
        Text('6'),
      ],
    );
  }

  Widget _buildTop() {
    return Image.network(
      'https://image.kmib.co.kr/online_image/2023/0510/2023042821353289931_1683698620_0018247094.jpg',
      height: 300,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }

  Widget _buildBottom() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [_builTitle(), _buildButtons()],
      ),
    );
  }

  Widget _builTitle() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '아이유는 아이가 아니에요',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('tttt'),
            ],
          ),
        ),
        Row(
          children: [
            Icon(Icons.star),
            Text(
              '42',
            )
          ],
        ),
      ],
    );
  }

  Widget _buildButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomButton(
          top: Icon(Icons.call),
          boottom: Text('Call'),
        ),
        CustomButton(
          top: Icon(Icons.call),
          boottom: Text('Route'),
        ),
        CustomButton(
          top: Icon(Icons.call),
          boottom: Text('Call'),
        ),
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  final Widget top;
  final Widget boottom;
  const CustomButton({
    super.key,
    required this.top,
    required this.boottom,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        top,
        boottom,
      ],
    );
  }
}
