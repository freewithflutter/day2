import 'package:day2/utill/default.dart';
import 'package:flutter/material.dart';

//TODO Reservation page. (결제 진행 페이지)

class SearchItemReserved extends StatelessWidget {
  static final String id = 'searchItemReserved';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          '입장권 구매 및 예약',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // TODO section1 Starts
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Image.asset(
                    'assets/images/reservedtop.png',
                    width: 200,
                  ),
                  padding: EdgeInsets.only(top: 20),
                ),
                Container(
                  child: Text(
                    '그루스터디카페',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 20),
                ),
                Container(
                  height: 75,
                  color: Color(0xFFF8F9FB),
                  child: Center(
                    child: Text(
                      '10월 19일 (목)    9:00 ~ 20:00',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            height: 14,
            color: ksizedBoxColor,
            decoration: BoxDecoration(border: Border.fromBorderSide(Border)),
          ),
        ],
      ),
    );
  }
}
