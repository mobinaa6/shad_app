import 'package:flutter/material.dart';
import 'package:flutter_shad/screens/login.dart';

class WelcomeScreen extends StatefulWidget {
  WelcomeScreen(
      {Key? key,
      required this.colorr255,
      required this.color172,
      required this.color194,
      required this.color255,
      required this.color7,
      required this.colorr172,
      required this.colorr194,
      required this.colorr7})
      : super(key: key);
  int color255;
  int color7;
  int color172;
  int color194;
  int colorr255;
  int colorr7;
  int colorr172;
  int colorr194;

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int? color255;
  int? color7;
  int? color172;
  int? color194;
  int? colorr255;
  int? colorr7;
  int? colorr172;
  int? colorr194;

  String text1 =
      'زیست بوم دبجبتبال آموزش و پرورش ایران بر پایه مجهز ترین زیر ساخت فنی همراه اول';
  String Imagename = 'a1';
  String boldtext = 'شاد';
  String Text2 = 'Next';
  int adad = 1;
  double height = 300;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      color255 = widget.color255;
      color7 = widget.color7;
      color172 = widget.color172;
      color194 = widget.color194;
      colorr255 = widget.colorr255;
      colorr7 = widget.colorr7;
      colorr172 = widget.colorr172;
      colorr194 = widget.colorr194;
    });
  }

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xff43cea2), Color(0xff185a9d)])),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10),
                Text(
                  'شاد',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Center(
                  child: Container(
                    height: height,
                    child: Image.asset(
                      'images/$Imagename.png',
                    ),
                  ),
                ),
                Text(
                  '$boldtext',
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
                Divider(
                  color: Colors.white70,
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    '$text1',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 100),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 36, 180, 185),
                    minimumSize: Size(200, 40),
                  ),
                  onPressed: () {
                    setState(() {
                      adad++;
                      if (adad == 2) {
                        height = 273;
                        Imagename = 'a2';
                        boldtext = 'بالاترین سرعت و کیفیت';
                        text1 =
                            'پخش زنده و ارتباط تعاملی دو سویه بین معلم و تمامی دانش آموزان کلاس , تماس ویدیویی و ارِائه تمامی ابزار های آنلاین مورد نیاز آموزش مجازی';
                      } else if (adad == 3) {
                        height = 273;

                        Imagename = 'a3';
                        boldtext = 'کامل ترین جعبه ابزار';
                        Text(
                            'برگزاری آزمون آنلاین , مدیریت تکالیف , حضور و غیاب , ارائه نظر سنجی و ارسال متن , تصویر و ویدئو های با کیفیت بالا');
                      } else if (adad == 4) {
                        height = 300;

                        Imagename = 'a4';
                        boldtext = 'رسمی و معتبر';
                        text1 =
                            'ارائه تمامی محتوا ها و خدمات رسمی آموزش و پرورش برای دانش آموزان , مدیر و معلمان';
                      }
                      if (adad == 5) {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return LoginScreen();
                          },
                        ));
                      }
                    });
                  },
                  child: Text(adad == 4 || adad == 5 ? 'Sign up' : 'Next'),
                )
              ],
            ),
          )),
    );
  }
}
