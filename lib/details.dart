// import 'package:assignment12/Model/ModelData.dart';
import 'package:assigement12/list1.dart';
import 'package:assigement12/modeldemo/modeldemo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:photo_view/photo_view.dart';

class DetailsTabPage extends StatefulWidget {
  final String index;
  final String title;
  final String image;
  final String price;
  final String description;
  const DetailsTabPage({
    Key? key,
    required this.index,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
  }) : super(key: key);

  @override
  _DetailsTabPageState createState() => _DetailsTabPageState();
}

class _DetailsTabPageState extends State<DetailsTabPage> {




  List<ModelData> myList = arrayofData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          InkWell(onTap: () {}, child: Icon(Icons.share)),
          SizedBox(
            width: 20.0,
          ),

          SizedBox(
            width: 20.0,
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            child: Hero(
              transitionOnUserGestures: true,
              tag: widget.index,
              child:  PhotoView(
                imageProvider: AssetImage(widget.image,
                  // fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.black,
              margin: EdgeInsets.all(7.0),
              elevation: 12.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffF6B042)),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Price : ${widget.price}",
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffF6B042)),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "${widget.description}",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(style: TextButton.styleFrom(primary: Color(0xffF6B042)),
                            onPressed: (){}, child: Text("Place Order", style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,))),
                      ],
                    )
                    ,                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }


}