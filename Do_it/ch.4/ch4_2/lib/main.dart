import 'package:flutter/material.dart';

// 이미지와 폰트 추가
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material Flutter App',
        theme: ThemeData(
          primaryColor: Colors.blue,
        ),
        home: ImageWidgetApp());
  }
}

class ImageWidgetApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ImageWidgetApp();
  }
}

class _ImageWidgetApp extends State<ImageWidgetApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Widget'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('image/flutter_logo.png',
                  width: 200, height: 100, fit: BoxFit.fill),
              Text(
                'Hello Flutter',
                style: TextStyle(
                    fontFamily: 'Pacifico', fontSize: 30, color: Colors.blue),
              )
            ],
          ),
        ),
      ),
    );
  }
}
