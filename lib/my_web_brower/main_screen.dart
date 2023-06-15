import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late WebViewController _webViewController;

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('나만의 웹브라우저'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
          ),
          PopupMenuButton<String>(
            onSelected: (value) {
              setState(() {});
              _webViewController.loadUrl(value);
            },
            itemBuilder: (context) => [
              PopupMenuItem<String>(
                value: 'https://www.google.com',
                child: Text('구글'),
              ),
              PopupMenuItem<String>(
                value: 'https://www.naver.com',
                child: Text('네이버'),
              ),
              PopupMenuItem<String>(
                value: 'https://www.kakao.com',
                child: Text('카카오'),
              ),
            ],
          )
        ],
      ),
      body: WillPopScope(
        onWillPop: () async {
          if (await _webViewController.canGoBack()) {
            await _webViewController.goBack();
            return false;
          }
          return true;
        },
        child: WebView(
            initialUrl: 'https://cafe.naver.com/survivalcoding',
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (cotroller) {
              _webViewController = cotroller;
            }),
      ),
    );
  }
}
