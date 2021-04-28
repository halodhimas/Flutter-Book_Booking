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
              child: Container(
                height: 263,
                width: double.infinity,
                child: Stack(
                  children: [
                    CustomPaint(
                      painter: BottomSlider(),
                      size: Size(double.infinity, 275),
                    ),
                    Container(
                      child: Row(
                        children: [
                          //book
                          Container(
                              margin: EdgeInsets.only(
                                  top: 60, left: 30, right: 30, bottom: 30),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      width: 95,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/img/book.png'))),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('Design Thinking',
                                          style: TextStyle(
                                            fontFamily: "modern",
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                          )),
                                      SizedBox(height: 15),
                                      Row(
                                        children: [
                                          SvgPicture.asset(locationIcon),
                                          SizedBox(width: 12),
                                          Text('Per. Cempaka Indah No 57.',
                                              style: TextStyle(
                                                fontFamily: "modern",
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                              )),
                                        ],
                                      ),
                                      SizedBox(height: 15),
                                      Row(
                                        children: [
                                          SvgPicture.asset(statusIcon),
                                          SizedBox(width: 12),
                                          Text('Buku Sedang Diantar...',
                                              style: TextStyle(
                                                fontFamily: "modern",
                                                color: Color(0xFFBEBEBE),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                              )),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              )),
                        ],
                      ),
                    ),
                    //Button
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        margin: EdgeInsets.all(30),
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: orangePrimary,
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          children: [
                            Text(
                              'Rp 5.000',
                              style: TextStyle(
                                  fontFamily: 'modern',
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700),
                            ),
                            Spacer(),
                            Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: SvgPicture.asset(nextIcon),
                            )
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        margin: EdgeInsets.only(top: 15),
                        child: SvgPicture.asset(slider),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
