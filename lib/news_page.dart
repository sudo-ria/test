import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  int pageIndex = 0;
  List<Widget> pageList = <Widget>[
    NewsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            'News',
            style: TextStyle(
                fontWeight: FontWeight.w400, fontSize: 20, color: Colors.black),
          ),
        ),
        elevation: 0.0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xffe74249),
        unselectedItemColor: Colors.grey,
        currentIndex: pageIndex,
        onTap: (value) {
          setState(() {
            pageIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.notes), label: 'News'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline), label: 'Something'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Profile'),
          BottomNavigationBarItem(
              icon: Icon(Icons.sports_bar), label: 'Something'),
          BottomNavigationBarItem(icon: Icon(Icons.map_outlined), label: 'Map')
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 37),
        children: [
          Center(
            child: Stack(
              children: [
                Container(
                  width: 328,
                  height: 478,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 30, top: 12),
                    child: Column(
                      children: [
                        Text(
                          'Firstname Secondname',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        bottomRight: Radius.circular(40.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 1,
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 20,
                    child: Icon(
                      Icons.person_outline_outlined,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 19),
          Center(
            child: Stack(
              children: [
                Container(
                  width: 328,
                  height: 218,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 30, top: 12),
                    child: Column(
                      children: [
                        Text(
                          'Firstname Secondname',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        bottomRight: Radius.circular(40.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 1,
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 20,
                    child: Icon(
                      Icons.person_outline_outlined,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 19),
          Center(
            child: Stack(
              children: [
                Container(
                  width: 328,
                  height: 218,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 30, top: 12),
                    child: Column(
                      children: [
                        Text(
                          'Firstname Secondname',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        bottomRight: Radius.circular(40.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 1,
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 20,
                    child: Icon(
                      Icons.person_outline_outlined,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
