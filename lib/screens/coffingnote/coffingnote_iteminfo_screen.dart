import 'package:day2/utill/default.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoffingNoteItemInfo extends StatelessWidget {
  static final String id = 'coffingNoteItemInfo';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: kTextDarkGaryColor,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: double.infinity,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(45),
                    bottomRight: Radius.circular(45),
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    height: 643,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:
                            AssetImage('assets/images/coffingnoteitembg.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 153,
                        ),
                        Container(
                          child: Image.asset(
                            'assets/images/roasteryitem1.png',
                            width: 125,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            top: 46,
                            bottom: 30,
                          ),
                          child: Text(
                            '프릳츠 커피 컴퍼니',
                            style: TextStyle(
                              fontSize: 34,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xFF000000).withOpacity(0.25),
                                blurRadius: 4,
                                offset:
                                    Offset(0, 11), // changes position of shadow
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            child: Image.asset(
                              'assets/images/coffingblending.png',
                              height: 155,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(11),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 600,
            child: Container(
              width: 370,
              height: 147,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  width: 1,
                  color: Color(0xFF9098B1),
                ),
              ),
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '대표 블랜딩',
                      style: TextStyle(
                        letterSpacing: 1.0,
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF50555C),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        top: 5,
                        bottom: 5,
                      ),
                      child: Text(
                        '올드독',
                        style: TextStyle(
                          fontSize: 29,
                          fontWeight: FontWeight.w900,
                          color: Color(0xFF50555C),
                        ),
                      ),
                    ),
                    Text(
                      '달콤 쌉싸롬한 향미와  깊은 커피의 향을 동시에 내는 서울의 커피 취향을 한번에',
                      style: TextStyle(
                        color: Color(0xFF9098B1),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
