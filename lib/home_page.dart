import 'package:flutter/material.dart';
import 'package:video_app/bestmovielist.dart';
import 'package:video_app/mostwatchedmovielist.dart';
import 'package:video_app/trendingmovielist.dart';
import 'package:video_app/movie.dart';
import 'package:video_app/viewpage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  int _index1 = 1;
  int _index2 = 2;
  int _index3 = 3;
  int _index4 = 4;
  int _currentIndex=0;

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
            leading: Padding(
              padding: EdgeInsets.only(left: 0,top: 10, right: 0),
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {},
              ),
            ),
            title: Container(
              color: Colors.black,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.notifications_none_outlined,color: Colors.white,),
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Container(
                    width: 400,
                    height: 250,
                    decoration: new BoxDecoration(
                      image: new DecorationImage(image: new AssetImage("images/picture.png")),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 120, left: 0, right: 80),
                              child: Text("India's own Movie app And Find the Best videos to snack on",
                                style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic, fontSize: 15,
                                  ),
                              ),
                            ),
                            ),
                          SizedBox(height: 5,),
                          FlatButton(
                            onPressed: (){},
                            color: Colors.pink,
                            child: const Text('Download',style: TextStyle(fontSize: 12, color: Colors.white,
                            fontWeight: FontWeight.bold),),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Trending Movies',
                        style: TextStyle(fontSize: 18,
                        fontWeight: FontWeight.bold,
                        ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.black,
                          child: Icon(Icons.double_arrow_sharp, color: Colors.pink,),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Trending Movie video",
                              style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                            ),
                            Text('26.2M views',)
                          ],
                        ),
                        FlatButton(
                          child: Row(
                            children: [
                              Text('View All'),
                              Icon(Icons.arrow_forward_ios)
                            ],
                          ),
                          onPressed: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context) => ViewPage()));
                          },
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 110,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: movieList.length,
                        itemBuilder: (context, i)=>HorizontalListItem(i),)
                  ),

                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 20),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.start,
                  //     children: [
                  //       Text('Best Movies',
                  //         style: TextStyle(fontSize: 18,
                  //           fontWeight: FontWeight.bold,
                  //         ),
                  //       )
                  //     ],
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.black,
                          child: Icon(Icons.double_arrow_sharp, color: Colors.pink,),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Best Movie videos",
                              style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                            ),
                            Text('22.3M views',)
                          ],
                        ),
                        FlatButton(
                          child: Row(
                            children: [
                              Text('View All'),
                              Icon(Icons.arrow_forward_ios)
                            ],
                          ),
                          onPressed: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context) => ViewPage()));
                          },
                        ),
                      ],
                    ),
                  ),
                  Container(
                      height: 110,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: movieList.length,
                        itemBuilder: (context, i)=>BestmovieListItem(i),)
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.black,
                          child: Icon(Icons.double_arrow_sharp, color: Colors.pink,),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Most watched Movied",
                              style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                            ),
                            Text('12.7M views',)
                          ],
                        ),
                        FlatButton(
                          child: Row(
                            children: [
                              Text('View All'),
                              Icon(Icons.arrow_forward_ios)
                            ],
                          ),
                          onPressed: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context) => ViewPage()));
                          },
                        ),
                      ],
                    ),
                  ),
                  Container(
                      height: 150,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: movieList.length,
                        itemBuilder: (context, i)=>MostwatchedmovieList(i),)
                  ),
                ],
              ),
            ),
          ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            selectedFontSize: 15,
            unselectedFontSize: 10,
            selectedItemColor: Colors.white,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  decoration: BoxDecoration(
                      color: _index == 0 ? Colors.pink : Colors.grey,
                      shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.home_outlined,color: _index==0? Colors.white: Colors.black,),
                  ),
                ),
                title: Text(
                  "Home",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Inter',
                    ),
                  ),
                ),

              BottomNavigationBarItem(
                icon: Container(
                  decoration: BoxDecoration(
                      color: _index1 == 1 ? Colors.pink : Colors.grey,
                      shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.shopping_bag_outlined,color: _index1==1? Colors.white: Colors.black,),
                  ),
                ),
                title: Text(
                  "Explore",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Inter',
                  ),
                ),
              ),

              BottomNavigationBarItem(
                icon: Container(
                  decoration: BoxDecoration(
                      color: _index2 == 2 ? Colors.pink : Colors.grey,
                      shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.videocam,color: _index2==2? Colors.white: Colors.black,),
                  ),
                ),
                title: Text(
                  "Video",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Inter',
                  ),
                ),
              ),

              BottomNavigationBarItem(
                icon: Container(
                  decoration: BoxDecoration(
                      color: _index3 == 3 ? Colors.pink : Colors.grey,
                      shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.messenger_outline,color: _index3==3? Colors.white: Colors.black,),
                  ),
                ),
                title: Text(
                  "Chat",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Inter',
                  ),
                ),
              ),

              BottomNavigationBarItem(
                icon: Container(
                  decoration: BoxDecoration(
                      color: _index4 == 4 ? Colors.pink : Colors.grey,
                      shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.person_outline_outlined,color: _index4==4? Colors.white: Colors.black,),
                  ),
                ),
                title: Text(
                  "Profile",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
                _index=0;
                _index1=1;
                _index2=2;
                _index3=3;
                _index4=4;
              });
            }
        ),

    ),
    );


    }

  // buildContainerBottomNav(IconData icon, {isSelected = false}) {
  //     return Material(
  //       child: GestureDetector(
  //       child: InkWell(
  //         onTap: ({isSelected = 0 }) {
  //           setState(() {
  //             // ignore: unnecessary_statements
  //             (isSelected=!isSelected);
  //           });
  //         },
  //         child:   Container(
  //           decoration: BoxDecoration(
  //             color: isSelected ? Colors.pink: Colors.black12,
  //             shape: BoxShape.circle,
  //             boxShadow: isSelected
  //                 ? [BoxShadow(color: Colors.black12,blurRadius: 5, spreadRadius: 1),]
  //                 :[],
  //           ),
  //           height: 40,
  //           width: 40,
  //           child: Icon(icon, color: isSelected ? Colors.white: Colors.grey,),
  //         ),
  //       ),
  //       ),

  }



