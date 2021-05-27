import 'package:flutter/material.dart';

// 스캐폴드를 이용한 머티리얼 디자인 적용
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MaterialFlutterApp(),
    );
  }
}

class MaterialFlutterApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MetarialFlutterApp();
  }
}

class _MetarialFlutterApp extends State<MaterialFlutterApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material Design App'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      body: Container(
          child: Center(
        child: Column(
          children: <Widget>[Icon(Icons.android), Text('android')],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      )),
    );
  }
}
