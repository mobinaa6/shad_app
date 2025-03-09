import 'package:flutter/material.dart';
import 'package:flutter_shad/main_scareen.dart';
import 'package:flutter_shad/screens/profile_screen.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ShadiniScreen extends StatefulWidget {
  ShadiniScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ShadiniScreen> createState() => _ShadiniScreenState();
}

class _ShadiniScreenState extends State<ShadiniScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {});
  }

  int a1 = 2; //1
  int a2 = 2; //1
  ///////////
  int a3 = 2; //2
  int a4 = 2; //2
  /////////
  int a5 = 2; //3
  int a6 = 1; //3
/////////////
  int a7 = 1; //4
  int a8 = 3; //4
  ////////////
  int a9 = 1; //5
  int a10 = 1; //5
  ////////////
  int a11 = 1; //6
  int a12 = 1; //6
  /////////
  int a13 = 3; //7
  int a14 = 5; //7
  ////////
  int adad = 1; //6

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
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            adad++;
                            if (adad == 2) {
                              a1 = 1;
                              a2 = 1;
                              a3 = 1;
                              a4 = 1;
                              a5 = 2;
                              a6 = 1;
                              a7 = 1;
                              a8 = 1;
                              a9 = 1;
                              a10 = 1;
                              a11 = 1;
                              a12 = 1;
                              a13 = 1;
                              a14 = 1;
                            } else if (adad == 3) {
                              a1 = 3;
                              a2 = 2;
                              a3 = 3;
                              a4 = 2;
                              a5 = 3;
                              a6 = 1;
                              a7 = 2;
                              a8 = 3;
                              a9 = 2;
                              a10 = 2;
                              a11 = 2;
                              a12 = 5;
                              a13 = 4;
                              a14 = 5;
                            } else if (adad == 4) {
                              a1 = 2; //1
                              a2 = 2; //1
                              ///////////
                              a3 = 2; //2
                              a4 = 2; //2
                              /////////
                              a5 = 2; //3
                              a6 = 1; //3
/////////////
                              a7 = 1; //4
                              a8 = 3; //4
                              ////////////
                              a9 = 1; //5
                              a10 = 1; //5
                              ////////////
                              a11 = 1; //6
                              a12 = 1; //6
                              /////////
                              a13 = 3; //7
                              a14 = 5; //7
                              adad == 1;
                            } else if (adad == 5) {
                              setState(() {
                                adad = 2;
                              });
                            }
                          });
                        },
                        icon: Icon(
                          Icons.change_circle_rounded,
                          color: Colors.white,
                          size: 50,
                        )),
                    SizedBox(height: 15),
                    Text(
                      'تغییر شکل چیدمان',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return ProfileScreen();
                            },
                          ));
                        },
                        icon: Icon(Icons.menu, size: 0)),
                    IconButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return MainScreen();
                            },
                          ));
                        },
                        icon: Icon(Icons.menu, size: 0))
                  ],
                ),
              ),
              SliverPadding(padding: EdgeInsets.only(bottom: 50)),
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
                    crossAxisCount: 5,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    repeatPattern: adad == 1
                        ? QuiltedGridRepeatPattern.same
                        : QuiltedGridRepeatPattern.inverted,
                    pattern: [
                      QuiltedGridTile(a1, a2),
                      QuiltedGridTile(a3, a4),
                      QuiltedGridTile(a5, a6),
                      QuiltedGridTile(a7, a8),
                      QuiltedGridTile(a9, a10),
                      QuiltedGridTile(a11, a12),
                      QuiltedGridTile(a13, a14),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
