import 'package:flutter/material.dart';
import 'res/listData.dart';
void main(){

  runApp(MyApp());

}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("GirdView 排版"),
        ),
        body:HomeContent(),
      ),
    );
  }
}
class HomeContent extends StatelessWidget{

  List<Widget> _getListData(){
    List<Widget> list = new List();

    for(int i =0; i<20; i++){
      list.add(
       Container(
        alignment: Alignment.center,
        color: Colors.yellow,
         child: Text(
           "$i.我是GirdView",
           style: TextStyle(
           fontSize: 15,
           color: Colors.deepOrange
         ),
         ),
       )
      );
    }
    return list;
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(//可以控制一行有多少個列
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,//控制左右邊距
      mainAxisSpacing: 20,//控制上下邊距
      childAspectRatio: 0.7,//如果要自訂寬高,需使用childAspectRatio 他能控制寬高的比例
      crossAxisCount: 2,
       children:_getListData(),

    );
  }

}