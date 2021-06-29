import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'model/post.dart';

void main() => runApp(App());

//创建自定义的小部件
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      //主题颜色，展示appbar 的颜色
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,//页面背景颜色
      appBar: AppBar(
        title: Text("NINGHAO"),
        elevation: 0.0,
      ),
      //页面主题区
      body: ListView.builder(
          itemCount: posts.length,
          itemBuilder: _listItemBuilder),
    );
  }

  //列表展示的方法
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,//背景颜色
      margin: EdgeInsets.all(8.0),//外边距，四周添加边距
      child: Column( //Column竖着排列
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(height: 16.0),
          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.title,
          ),
          Text(
            posts[index].author,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(height: 16.0),
        ],
      ),
    );
  }
}

// 创建一个小部件
class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("hello",
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          )),
    );
  }
}
