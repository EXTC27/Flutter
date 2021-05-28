import 'package:flutter/material.dart';
import 'sub/firstPage.dart';
import 'sub/secondPage.dart';
import './animalItem.dart';

// 리스트 뷰 만들기
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  late List<Animal> animalList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Listview Example'),
        ),
        body: TabBarView(
          children: <Widget>[
            FirstApp(list: animalList),
            SecondApp(list: animalList)
          ],
          controller: controller,
        ),
        bottomNavigationBar: TabBar(
          tabs: <Tab>[
            Tab(
              icon: Icon(
                Icons.looks_one,
                color: Colors.blue,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.looks_two,
                color: Colors.blue,
              ),
            )
          ],
          controller: controller,
        ));
  }

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
    controller.addListener(() {
      if (!controller.indexIsChanging) {
        print('이전 index, ${controller.previousIndex}');
        print('현재 index, ${controller.index}');
      }
    });

    animalList.add(
        Animal(animalName: '벌', kind: '곤충', imagePath: 'repo/images/bee.png'));
    animalList.add(Animal(
        animalName: '고양이', kind: '포유류', imagePath: 'repo/images/cat.png'));
    animalList.add(Animal(
        animalName: '젖소', kind: '포유류', imagePath: 'repo/images/cow.png'));
    animalList.add(Animal(
        animalName: '강아지', kind: '포유류', imagePath: 'repo/images/dog.png'));
    animalList.add(Animal(
        animalName: '여우', kind: '포유류', imagePath: 'repo/images/fox.png'));
    animalList.add(Animal(
        animalName: '원숭이', kind: '영장류', imagePath: 'repo/images/monkey.png'));
    animalList.add(Animal(
        animalName: '돼지', kind: '포유류', imagePath: 'repo/images/pig.png'));
    animalList.add(Animal(
        animalName: '늑대', kind: '포유류', imagePath: 'repo/images/wolf.png'));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
