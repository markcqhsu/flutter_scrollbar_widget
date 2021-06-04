import 'package:flutter/material.dart';

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
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FlutterLogo(size: 500,),
            FlutterLogo(size: 400,),
          ],
        ),
      ),
      //------ReorderableListView
      // body: ReorderableListView(
      //   children: List.generate(
      //       20,
      //       (index) => Text(
      //             "index is $index",
      //             key: UniqueKey(),
      //           )),
      //   onReorder: (int oldIndex, int newIndex) =>
      //       print("Move from $oldIndex to $newIndex"),
      //   header: Text("header"),//不可移動的標題
      // ),
      //----------PageView
      // body: PageView(
      //   pageSnapping: true,//如果想要停在頁面中間的話
      //   scrollDirection: Axis.vertical,
      //   children: [
      //     Container(color: Colors.blue,),
      //     Container(color: Colors.orange),
      //   ],
      //   onPageChanged: (index)=> print("Selected $index"),//確認用戶在哪一頁
      // ),
      //-------RotatedBox-------
      // body: RotatedBox(
      //   quarterTurns: 1,
      //   child: ListWheelScrollView(
      //     children: List.generate(
      //       10,
      //       (index) => RotatedBox(
      //         quarterTurns: -1,
      //         child: Container(
      //           // color: Colors.blue,
      //           alignment: Alignment.center,
      //           child: Text("$index", style: TextStyle(fontSize: 72),),
      //         ),
      //       ),
      //     ),
      //     itemExtent: 100,
      //     // offAxisFraction: 1.2,
      //     overAndUnderCenterOpacity: 0.5,//除了中間的外, 都會有點半透明效果
      //     useMagnifier: true,
      //     // physics: NeverScrollableScrollPhysics(),//滾動物理
      //     physics: FixedExtentScrollPhysics(),
      //     onSelectedItemChanged: (index) => print("selected $index"),
      //
      //     // diameterRatio: 0.8,
      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
