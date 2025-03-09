import 'package:flutter/material.dart';
import 'package:flutter_shad/screens/kanal_chat_screen.dart';

class ChatScreen extends StatefulWidget {
  ChatScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
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
          ],
        ),
      ),
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
                      delegate: TabarViewDelegate(TabBar(tabs: [
                        Tab(
                          text: 'شخصی',
                        ),
                        Tab(
                          text: 'گروه ها',
                        )
                      ])))
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
                            SizedBox(height: 20),
                            _getkanalha('سروش', '... در حال نوشتن ', 'p1'),
                            _geyDivider(),
                            SizedBox(height: 18),
                            _getkanalha('میلاد', 'sin', 'p2'),
                            _geyDivider(),
                            SizedBox(height: 18),
                            _getkanalha('مبین', 'خداحافظ', 'p3'),
                            _geyDivider(),
                            SizedBox(height: 18),
                            _getkanalha('محمد', 'باشه ', 'p4'),
                            _geyDivider(),
                            SizedBox(height: 18),
                            _getkanalha('هومن', 'من رسیدم', 'p5'),
                            _geyDivider(),
                            SizedBox(height: 18),
                            _getkanalha('کارو', 'خیلی اینترنت ضعیفه', 'p6'),
                            _geyDivider(),
                            SizedBox(height: 18),
                            _getkanalha(
                                'پرهام', 'دوستان فایل بالا را ببینید', 'p7'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(
                        child: Column(
                          children: [
                            _getSearchBox(),
                            SizedBox(height: 20),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) {
                                    return KanalChatScreen();
                                  },
                                ));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        'زبان خارجه',
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Text(
                                          'استاد رضایی: فردا امتحان دارید دوستان',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: _getCirclaAvator('a1'),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              height: 20,
                              color: Colors.white60,
                            ),
                            _getkanalha('استاد رضایی', 'بله بله درسته', 'd1'),
                            _geyDivider(),
                            SizedBox(height: 18),
                            _getkanalha('جغرافیا', '...در حال نوشتن', 'item2'),
                            _geyDivider(),
                            SizedBox(height: 18),
                            _getkanalha('ریاضی', 'خیلی راحت بود ', 'd2'),
                            _geyDivider(),
                            SizedBox(height: 18),
                            _getkanalha('تولید محتوا',
                                'فردا برنامه ها رو حاضر کنید', 'a1'),
                            _geyDivider(),
                            SizedBox(height: 18),
                            _getkanalha('هنر',
                                'پودمان پنج جواب های مسئله ها را بدید', 'd3'),
                            _geyDivider(),
                            SizedBox(height: 18),
                            _getkanalha(
                                'دانش فنی', 'فردا مبنای 2 را میخوانیم', 'd4'),
                            _geyDivider(),
                            SizedBox(height: 18),
                            _getkanalha(
                                'فیزیک', 'میشه یکبار دیگه توضیح بدید', 'd5'),
                            _geyDivider(),
                            SizedBox(height: 18),
                            _getkanalha('شیمی', '... تماس ویدیویی', 'd6'),
                            _geyDivider(),
                            SizedBox(height: 18),
                            _getkanalha(
                                'نقشه کشی', 'دوستان فایل بالا را ببینید', 'd7'),
                            _geyDivider(),
                            SizedBox(height: 18),
                            _getkanalha('الزامات محیظ کار',
                                'دوستان فایل بالا را ببینید', 'd8'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget _geyDivider() {
  return Divider(
    height: 20,
    color: Colors.white60,
  );
}

Widget _getkanalha(String Text1, String Text2, String NameImage) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Column(
        children: [
          Text(
            '$Text1',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text(
              '$Text2',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(right: 20),
        child: _getCirclaAvator('$NameImage'),
      ),
    ],
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

Widget _getCirclaAvator(String NameImage) {
  return CircleAvatar(
    radius: 35,
    backgroundImage: AssetImage('images/$NameImage.png'),
  );
}
