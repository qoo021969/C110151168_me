import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BioPage(),
    );
  }
}

class BioPage extends StatefulWidget {
  @override
  _BioPageState createState() => _BioPageState();
}

class _BioPageState extends State<BioPage> {
  bool showBio = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('自傳'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  showBio = true;
                });
              },
              child: Text('認識我'),
            ),
            SizedBox(height: 16.0),
            if (showBio)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '作為一位資訊科學的愛好者，我是一個熱衷於科技創新的年輕男子。我在資訊科學的領域裡追求知識和技能，並享受解決複雜問題的過程。我喜歡挑戰自己，透過程式設計和數據分析來發現新的可能性。',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    '我的求學過程中，我深深地沉浸於演算法、資料結構和軟體開發的學習。我認為資訊科學是一門不斷演進的藝術，而我希望能在這個領域中掌握更多的技能，並應用於解決現實生活中的難題。',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    '同時，我也熱衷於參與開源社區，分享自己的學習心得和技術見解。這種分享和交流的過程不僅激發了我的創造力，也擴大了我的視野。在這個快速變化的數位時代，我將持續追求卓越，以資訊科學為媒介，為未來的創新和發展做出貢獻。',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(height: 16.0),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
