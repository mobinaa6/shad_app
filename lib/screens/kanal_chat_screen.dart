import 'package:flutter/material.dart';

class KanalChatScreen extends StatefulWidget {
  KanalChatScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<KanalChatScreen> createState() => _KanalChatScreenState();
}

class _KanalChatScreenState extends State<KanalChatScreen> {
  @override
  @override
  void initState() {
    // TODO: implement initState
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
          ],
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          'زبان خارجه 104',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('images/w3.png'),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Spacer(),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 70,
                            ),
                            child: _getContainerChat(
                                'استاد رضایی', 'https://alaatv.com/set/1082'),
                          ),
                          ////////////
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('images/a1.png'),
                      ),
                      Spacer(),
                      _getContainerChat('استاد رضایی',
                          'دانش آموزان عزیز تمامی سوالات درس را در سایت بالا قرار داده ام پس حتما ببنید'),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('images/w3.png'),
                      ),
                      Spacer(),
                      _getContainerChat(
                          'حمید محمدی', 'فقط استاد کی امتحان رو میگیرید'),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('images/w2.jpg'),
                      ),
                      Spacer(),
                      _getContainerChat(
                          'زانا حیدری', 'استاد سایت یکم مشکل داره فکر کنم'),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Spacer(),
                      _getContainerChat('مبین احمدی', 'خیلی ممنون'),
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('images/w1.png'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

Widget _getContainerChat(String NameSend, String Texts) {
  return Padding(
    padding: const EdgeInsets.only(right: 50),
    child: Container(
      height: 100,
      width: 250,
      color: Color.fromARGB(255, 97, 169, 179),
      child: Column(
        children: [
          Text(' $NameSend'),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                height: 60,
                width: 200,
                color: Colors.white,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 3),
                    child: Text(
                      '$Texts',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
