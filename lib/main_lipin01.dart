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

    var itemMap = OpenData.map((value){
      return Container(
        child: Column(
          children: <Widget>[
            Container(
              child: Image.network(value["PicURL"],
                fit: BoxFit.cover,
              ),
            ),
           
            SizedBox(height: 10,),
            Text(
                value["Name"],
                style: TextStyle(
                  fontSize: 10
                ),
            )
          ],
        ),
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 2
          )
        ),
      );
    });
    return itemMap.toList();
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(//可以控制一行有多少個列
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,//控制左右邊距
      mainAxisSpacing: 20,//控制上下邊距
      crossAxisCount: 2,
       children:_getListData(),

    );
  }

}