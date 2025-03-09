import 'package:flutter/material.dart';
import 'package:flutter_shad/screens/chat_screen.dart';
import 'package:flutter_shad/screens/profile_screen.dart';
import 'package:flutter_shad/screens/servis_screen.dart';
import 'package:flutter_shad/screens/shadino_screen.dart';

class MainScreen extends StatefulWidget {
  MainScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _SelectedBottomNavigation = 3;
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.transparent,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15)),
          child: SizedBox(
            height: 95,
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.transparent,
              currentIndex: _SelectedBottomNavigation,
              onTap: (int index) {
                setState(() {
                  _SelectedBottomNavigation = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                    icon: Image.asset(
                      'images/b2.png',
                      height: 55,
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Image.asset(
                      'images/b4.png',
                      height: 55,
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Image.asset(
                      'images/b3.png',
                      height: 50,
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Image.asset(
                        'images/b1.png',
                        height: 55,
                      ),
                    ),
                    label: ' '),
              ],
            ),
          ),
        ),
      ),
      body: IndexedStack(
        index: _SelectedBottomNavigation,
        children: _getLayout(),
      ),
    );
  }

  List<Widget> _getLayout() {
    return <Widget>[
      ProfileScreen(),
      ShadiniScreen(),
      ChatScreen(),
      ServisScreen(),
    ];
  }
}
