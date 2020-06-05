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

  Widget _getListData(context,intex){

    return  Container(
      child: Column(
        children: <Widget>[
          Image.network(OpenData[intex]["PicURL"]),
          SizedBox(height: 10,),
          Text(
            OpenData[intex]["Name"],
            style: TextStyle(
                fontSize: 10
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(//使用GridView.builder如果要自訂義寬高,欄位需使用下面那個methed
      padding: EdgeInsets.all(20),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount:OpenData.length ,
      itemBuilder: this._getListData,

    );
  }

}