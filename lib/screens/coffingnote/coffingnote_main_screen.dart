import 'package:flutter/material.dart';
import 'package:day2/utill/default.dart';
import 'package:flutter_page_indicator/flutter_page_indicator.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class CoffingNoteMain extends StatelessWidget {
  static final String id = 'coffingNoteMain';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            Icons.calendar_today_outlined,
            size: 28,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.more_vert,
            size: 28,
          ),
          SizedBox(
            width: 10,
          ),
        ],
        iconTheme: IconThemeData(
          color: kTextDarkGaryColor,
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/coffingmainbg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    child: Text(
                      '나의 커핑노트',
                      style:
                          TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                    ),
                    padding: EdgeInsets.only(top: 20, bottom: 10),
                  ),
                  Text(
                    '9.1 - 10.1',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: kTextlighGaryColor),
                  ),
                  SizedBox(
                    height: 50,
                  )
                ],
              ),
            ),
            Container(
              height: 420,
              width: double.infinity,
              child: new Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return new Container(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/coffingitem1.png',
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  );
                },
                itemCount: 3,
                viewportFraction: 0.85,
                scale: 0.99,
                pagination: SwiperPagination(
                    margin: EdgeInsets.all(100), alignment: Alignment.topLeft),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {},
                    child: Container(
                      height: 60,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xFFF8965B),
                      ),
                      child: Center(
                        child: Text(
                          '한달 주기로 보기',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    padding: EdgeInsets.zero,
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Container(
                      height: 60,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          '일주일 주기로 보기',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    padding: EdgeInsets.zero,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
