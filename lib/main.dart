import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewHomePage(),
    );
  }
}

class ListViewHomePage extends StatefulWidget {
  const ListViewHomePage({Key key}) : super(key: key);

  @override
  _ListViewHomePageState createState() => _ListViewHomePageState();
}

class _ListViewHomePageState extends State<ListViewHomePage> {
  var titleList = [
    "Success",
    "Motivation",
    "Hard Work",
    "Decision",
    "Confidence",
    "Business",
    "Team Work",
    "Team Work 2",
  ];
  var descList = [
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    "Motivation details",
    "Hard Work details",
    "Decision details",
    "Confidence details",
    "Business details",
    "Team Work details",
    "Team Work 2 details",
  ];
  var imgList = [
    "assets/images/img1.jpg",
    "assets/images/img2.jpg",
    "assets/images/img3.jpg",
    "assets/images/img4.jpg",
    "assets/images/img5.jpg",
    "assets/images/img6.jpg",
    "assets/images/img7.jpg",
    "assets/images/img8.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "List View On-Click Event",
          style: TextStyle(color: Colors.grey),
        ),
        elevation: 5,
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: imgList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => showDialogfunc(
              context,
              titleList[index],
              descList[index],
              imgList[index],
            ),
            child: Card(
              child: Row(
                children: [
                  Image.asset(
                    imgList[index],
                    width: 100,
                    height: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          titleList[index],
                          style: TextStyle(fontSize: 18),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Text(descList[index]),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

showDialogfunc(BuildContext context, String title, String desc, String img) {
  return showDialog(
    context: context,
    builder: (context) {
      return Center(
        child: Material(
          type: MaterialType.transparency,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.7,
            height: 320,
            padding: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipOval(
                  child: Image.asset(img),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(title,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                SizedBox(
                  height: 10,
                ),
                Text(desc),
              ],
            ),
          ),
        ),
      );
    },
  );
}
