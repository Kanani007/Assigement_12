
import 'package:assigement12/grid1.dart';
import 'package:assigement12/modeldemo/modeldemo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'grid2.dart';

class FirstListViewPage extends StatefulWidget {
  const FirstListViewPage({Key? key}) : super(key: key);

  @override
  _FirstListViewPageState createState() => _FirstListViewPageState();
}

class _FirstListViewPageState extends State<FirstListViewPage> {
  List<ModelData> myList = arrayofData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body: ListViewWidget(myList: myList),
    );
  }
}

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({
    Key? key,
    required this.myList,
  }) : super(key: key);

  final List<ModelData> myList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: myList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FirstGridViewList()),
                );
              },
              leading: CircleAvatar(
                radius: 30.0,
                backgroundColor: Colors.white70,
                backgroundImage: AssetImage(myList[index].image ?? " "),
              ),
              title: Text(
                myList[index].title ?? " ",
              ),
              subtitle: Text(
                myList[index].subTitle ?? " ",
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Color(0xffF6B042),
              ),
            ),
          ),
        );
      },
    );
  }
}