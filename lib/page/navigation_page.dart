import 'package:book_booking/shared/icon.dart';
import 'package:book_booking/shared/theme.dart';
import 'package:book_booking/widgets/bottom_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavigationPage extends StatefulWidget {
  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            //Map View
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/img/map.jpg'),
                fit: BoxFit.cover,
              )),
            ),
            //Driver Container & center icon
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(children: [
                    //Avatar
                    Container(
                        margin: EdgeInsets.only(right: 15),
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                                image: AssetImage('assets/img/avatar.png')))),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ahmad Kurnia',
                          style: TextStyle(
                              fontFamily: 'modern',
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: 4),
                        Text('B 014 NG',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500)),
                      ],
                    ),
                    Spacer(),
                    //chat icon
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: orangePrimary,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: SvgPicture.asset(
                        chatIcon,
                        width: 20,
                      ),
                    )
                  ]),
                ),
                //center icon
                Container(
                  margin: EdgeInsets.only(top: 5, right: 45),
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: SvgPicture.asset(centerIcon),
                )
              ],
            ),
            //bottom slider
            Align(
              alignment: Alignment.bottomCenter,
              child: CustomPaint(
                size: Size.fromHeight(240),
                painter: BottomSlider(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
