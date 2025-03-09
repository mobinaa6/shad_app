import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String NmaeImage = 'p4';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Color.fromARGB(255, 7, 172, 194),
            Color.fromARGB(255, 0, 21, 24),
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: DefaultTabController(
            length: 2,
            child: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                  SliverPersistentHeader(
                    pinned: true,
                    floating: true,
                    delegate: TabarViewDelegate(
                      TabBar(
                        tabs: [
                          Tab(
                            text: 'پروفایل',
                          ),
                          Tab(
                            text: 'تنظیمات پروفایل',
                          ),
                        ],
                      ),
                    ),
                  ),
                ];
              },
              body: TabBarView(children: [
                CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'images/icon_menu.png',
                                    height: 100,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 7),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          side: BorderSide(
                                            color: Colors.white,
                                          ),
                                          primary: Colors.white,
                                          minimumSize: Size(200, 40)),
                                      onPressed: () {},
                                      child: Text(
                                        'Edit prifile',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: CircleAvatar(
                                  radius: 70,
                                  backgroundImage:
                                      AssetImage('images/$NmaeImage.png'),
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            color: Colors.white,
                            height: 40,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 200),
                            child: Column(
                              children: [
                                Text(
                                  'اطلاعات کاربری',
                                  style: TextStyle(
                                      color: Colors.amber, fontSize: 15),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  '09129121212',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                Text(
                                  'شماره موبایل',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Divider(
                                  color: Colors.white,
                                  height: 40,
                                ),
                                Text(
                                  'MobinAhmDi11',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                Text(
                                  'نام کاربری',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Divider(
                                  color: Colors.white,
                                  height: 40,
                                ),
                                Text(
                                  'in the Name of God',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                Text(
                                  'بیوگرافی',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(height: 30),
                                Text(
                                  'پیام رسان',
                                  style: TextStyle(
                                      color: Colors.amber, fontSize: 15),
                                ),
                                Text(
                                  'اعلان ها و صدا ها',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                                Divider(
                                  color: Colors.white,
                                  height: 40,
                                ),
                                Text(
                                  'حریم خضوضی و امنیت',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                                Divider(
                                  color: Colors.white,
                                  height: 40,
                                ),
                                Text(
                                  'داده ها و ذخیره سازی',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                                Divider(
                                  color: Colors.white,
                                  height: 40,
                                ),
                                Text(
                                  'تنظیمات',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                                Divider(
                                  color: Colors.white,
                                  height: 40,
                                ),
                                Text(
                                  'استیکر',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                                Divider(
                                  color: Colors.white,
                                  height: 40,
                                ),
                                Text(
                                  'پیام هاس ذخیره شده',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                                Divider(
                                  color: Colors.white,
                                  height: 40,
                                ),
                                Text(
                                  'پوشه بندی چت ها',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 320),
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                  size: 35,
                                )),
                          ),
                          SizedBox(width: 70),
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('images/$NmaeImage.png'),
                            radius: 80,
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Edit profile',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Image.asset('images/$NmaeImage.png'),
                          SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      NmaeImage = 'p1';
                                    });
                                  },
                                  child: Container(
                                    height: 130,
                                    child: Image.asset('images/p1.png'),
                                  ),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      NmaeImage = 'p6';
                                    });
                                  },
                                  child: Container(
                                    height: 130,
                                    child: Image.asset('images/p6.png'),
                                  ),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      NmaeImage = 'p3';
                                    });
                                  },
                                  child: Container(
                                    height: 130,
                                    child: Image.asset('images/p3.png'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                    SliverPadding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      sliver: SliverGrid(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) => Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              child: FittedBox(
                                fit: BoxFit.cover,
                                child: Image.asset('images/item$index.png'),
                              ),
                            ),
                          ),
                          childCount: 40,
                        ),
                        gridDelegate: SliverQuiltedGridDelegate(
                          crossAxisCount: 3,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          repeatPattern: QuiltedGridRepeatPattern.inverted,
                          pattern: [
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(1, 1),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
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
