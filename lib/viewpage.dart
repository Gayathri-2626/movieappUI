import 'package:flutter/material.dart';
import 'package:video_app/trendingmovielist.dart';

import 'home_page.dart';
import 'movie.dart';

class ViewPage extends StatefulWidget {
  @override
  _ViewPageState createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Watch Movies'),
          leading: Padding(
          padding: EdgeInsets.only(left: 0,top: 10, right: 0),
      child: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage()));
        },
      ),

    ),
    ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(top: 7, left: 20, right: 20),
            child: Column(
              children: [
                Container(
                    height: 500,
                    width: 300,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: movieList.length,
                      itemBuilder: (context, i)=>HorizontalListItem(i),)
                ),
              ],

            ),
          ),
        )


    ),
    );
  }
}
