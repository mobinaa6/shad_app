import 'package:flutter/material.dart';
import 'package:flutter_shad/screens/chat_screen.dart';
import 'package:flutter_shad/screens/shadino_screen.dart';

class ServisScreen extends StatefulWidget {
  const ServisScreen({Key? key}) : super(key: key);

  @override
  State<ServisScreen> createState() => _ServisScreenState();
}

class _ServisScreenState extends State<ServisScreen> {
  int color255 = 255;
  int color7 = 7;
  int color172 = 172;
  int color194 = 194;
  int colorr255 = 255;
  int colorr7 = 0;
  int colorr172 = 21;
  int colorr194 = 24;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Color.fromARGB(color255, color7, color172, color194),
            Color.fromARGB(colorr255, colorr7, colorr172, colorr194),
          ])),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: DefaultTabController(
            length: 2,
            child: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    toolbarHeight: 40,
                    actions: [
                      Padding(
                          padding: EdgeInsets.only(right: 18, left: 18),
                          child: IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) {
                                    return ChatScreen();
                                  },
                                ));
                              },
                              icon: Icon(Icons.menu)))
                    ],
                    backgroundColor:
                        Color.fromARGB(color255, color7, color172, color194),
                    expandedHeight: 100,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Image.asset(
                        'images/w1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SliverPersistentHeader(
                    pinned: true,
                    floating: true,
                    delegate: TabarViewDelegate(
                      TabBar(
                        tabs: [
                          Tab(
                            text: 'صفحه اصلی',
                          ),
                          Tab(
                            text: 'تنظیمات بک گراوند',
                          ),
                        ],
                      ),
                    ),
                  )
                ];
              },
              body: TabBarView(
                children: [
                  CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(
                        child: Column(
                          children: [
                            _getSearchBox(),
                            SizedBox(height: 30),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  _getcontainer('mobile1', 'گفتکو با وزیر'),
                                  Container(
                                      child: Image.asset(
                                    'images/logoflag.png',
                                    height: 150,
                                  )),
                                  _getcontainer('m7', 'شناسنامه'),
                                ],
                              ),
                            ),
                            SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                _getcontainer('m2', 'نمونه تدریس  '),
                                _getcontainer('m3', 'شادنما'),
                                _getcontainer('m4', 'صقحات رسمی'),
                              ],
                            ),
                            SizedBox(height: 30),
                            LinearProgressIndicator(
                              backgroundColor: Colors.grey[200],
                              color: Color.fromARGB(255, 23, 175, 180),
                            ),
                            SizedBox(height: 20),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset('images/w3.png')),
                            ),
                            SizedBox(height: 30),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  _getcontainer('m', 'تابستان من'),
                                  SizedBox(width: 5),
                                  Column(
                                    children: [
                                      Container(
                                        height: 125,
                                        width: 240,
                                        decoration: BoxDecoration(
                                          color: Colors.white12,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black38,
                                              blurRadius: 6,
                                              offset: Offset(5, 5),
                                            )
                                          ],
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 20),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10),
                                                child: Text(
                                                  'مدرسه من',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 25),
                                                ),
                                              ),
                                              Image.asset(
                                                'images/m6.png',
                                                height: 300,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                    onTap: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) {
                                          return ShadiniScreen();
                                        },
                                      ));
                                    },
                                    child: _getcontainer('m11', 'رویداد  شاد')),
                                _getcontainer('m12', 'رویداد شاد'),
                                _getcontainer('m10', 'رویداد شاد'),
                              ],
                            ),
                            SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                _getcontainer('m1', 'رویداد شاد'),
                                _getcontainer('m9', 'رویداد شاد'),
                                _getcontainer('m8', 'رویداد  شاد'),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  _getColorBackground()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _getColorBackground() {
    return Column(
      children: [
        Text(
          'انواع گردینت',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  color255 = 255;
                  color7 = 204;
                  color172 = 43;
                  color194 = 94;
                  colorr255 = 255;
                  colorr7 = 117;
                  colorr172 = 58;
                  colorr194 = 136;
                });
              },
              child: Container(
                child: Container(
                  height: 150,
                  width: 120,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                        Color.fromARGB(255, 204, 43, 94),
                        Color.fromARGB(255, 117, 58, 136),
                      ])),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  color255 = 255;
                  color7 = 54;
                  color172 = 209;
                  color194 = 220;
                  colorr255 = 255;
                  colorr7 = 91;
                  colorr172 = 134;
                  colorr194 = 229;
                });
              },
              child: Container(
                height: 150,
                width: 120,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Color.fromARGB(255, 54, 209, 220),
                      Color.fromARGB(255, 91, 134, 229),
                    ])),
              ),
            ),
          ],
        ),
        SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  color255 = 255;
                  color7 = 7;
                  color172 = 172;
                  color194 = 194;
                  colorr255 = 255;
                  colorr7 = 0;
                  colorr172 = 21;
                  colorr194 = 24;
                });
              },
              child: Container(
                height: 150,
                width: 120,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                      Color.fromARGB(255, 7, 172, 194),
                      Color.fromARGB(255, 0, 21, 24),
                    ])),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  color255 = 255;
                  color7 = 0;
                  color172 = 78;
                  color194 = 146;
                  colorr255 = 255;
                  colorr7 = 0;
                  colorr172 = 4;
                  colorr194 = 40;
                });
              },
              child: Container(
                height: 150,
                width: 120,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Color.fromARGB(255, 0, 78, 146),
                      Color.fromARGB(255, 0, 4, 40),
                    ])),
              ),
            ),
          ],
        ),
        SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  color255 = 255;
                  color7 = 238;
                  color172 = 205;
                  color194 = 163;
                  colorr255 = 255;
                  colorr7 = 239;
                  colorr172 = 98;
                  colorr194 = 159;
                });
              },
              child: Container(
                height: 150,
                width: 120,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                      Color.fromARGB(255, 238, 205, 163),
                      Color.fromARGB(255, 239, 98, 159),
                    ])),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  color255 = 255;
                  color7 = 189;
                  color172 = 195;
                  color194 = 199;
                  colorr255 = 255;
                  colorr7 = 44;
                  colorr172 = 62;
                  colorr194 = 80;
                });
              },
              child: Container(
                height: 150,
                width: 120,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Color.fromARGB(255, 189, 195, 199),
                      Color.fromARGB(255, 44, 62, 80),
                    ])),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

Widget _getcontainer(String NameImage, String TextLable) {
  return Column(
    children: [
      Container(
        width: 100,
        height: 140,
        decoration: BoxDecoration(
          color: Colors.white12,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 6,
              offset: Offset(5, 5),
            )
          ],
        ),
        child: Column(
          children: [
            Image.asset('images/$NameImage.png'),
            Text(
              '$TextLable',
              style: TextStyle(
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    ],
  );
}

Widget _getSearchBox() {
  return Container(
    padding: EdgeInsets.only(left: 18, right: 18, top: 10),
    height: 46,
    decoration: BoxDecoration(
      color: Colors.white38,
      borderRadius: BorderRadius.all(
        Radius.circular(13),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Icon(Icons.search),
          SizedBox(width: 15),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: TextField(
                decoration: InputDecoration(
                    floatingLabelAlignment: FloatingLabelAlignment.center,
                    hintStyle: TextStyle(color: Colors.white),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

class TabarViewDelegate extends SliverPersistentHeaderDelegate {
  TabarViewDelegate(this._tabBar);
  TabBar _tabBar;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Color.fromARGB(255, 7, 127, 143),
      child: _tabBar,
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  // TODO: implement minExtent
  double get minExtent => _tabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
