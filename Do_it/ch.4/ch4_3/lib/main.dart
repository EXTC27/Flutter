import 'package:flutter/material.dart';

// 유저와 상호작용하는 앱 만들기, 계산기 앱 개발
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Widget Example';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: _title, home: WidgetApp());
  }
}

class WidgetApp extends StatefulWidget {
  // WidgetApp({Key key}) : super(key: key);

  @override
  _WidgetExampleState createState() => _WidgetExampleState();
}

class _WidgetExampleState extends State<WidgetApp> {
  List<String> _btnList = ['더하기', '빼기', '곱하기', '나누기'];
  List<DropdownMenuItem<String>> _dropDownMenuItems = [];
  String _btnTxt = '';
  var _btnIcon;

  String sum = '';
  TextEditingController value1 = TextEditingController();
  TextEditingController value2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Example'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  '결과 : $sum',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: value1,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                    keyboardType: TextInputType.number, controller: value2),
              ),
              Padding(
                  padding: EdgeInsets.all(15),
                  child: RaisedButton(
                      child: Row(
                        children: <Widget>[Icon(_btnIcon), Text(_btnTxt)],
                      ),
                      color: Colors.amber,
                      onPressed: () {
                        setState(() {
                          var value1Int = double.parse(value1.value.text);
                          var value2Int = double.parse(value2.value.text);
                          var result;

                          if (_btnTxt == '더하기') {
                            result = value1Int + value2Int;
                          } else if (_btnTxt == '빼기') {
                            result = value1Int - value2Int;
                          } else if (_btnTxt == '곱하기') {
                            result = value1Int * value2Int;
                          } else {
                            result = value1Int / value2Int;
                          }
                          sum = '$result';
                        });
                      })),
              Padding(
                padding: EdgeInsets.all(15),
                child: DropdownButton(
                  items: _dropDownMenuItems,
                  onChanged: (value) {
                    setState(() {
                      _btnTxt = value.toString();
                      if (_btnTxt == '더하기') {
                        _btnIcon = Icons.add;
                      } else if (_btnTxt == '빼기') {
                        _btnIcon = Icons.remove;
                      } else if (_btnTxt == '곱하기') {
                        _btnIcon = Icons.close;
                      } else {
                        _btnIcon = Icons.add;
                      }
                    });
                  },
                  value: _btnTxt,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    for (var item in _btnList) {
      _dropDownMenuItems.add(DropdownMenuItem(
        value: item,
        child: Text(item),
      ));
    }
    print(_dropDownMenuItems[0].value is String);
    _btnTxt = _dropDownMenuItems[0].value.toString();
    _btnIcon = Icons.add;
  }
}
