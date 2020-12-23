import 'package:day2/main.dart';
import 'package:day2/screens/searchitem/searchitem_reserve_scree.dart';
import 'package:flutter/material.dart';
import 'package:day2/utill/default.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchItemAbout extends StatelessWidget {
  static final String id = 'searchItemAbout';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(FontAwesomeIcons.heart),
          ),
        ],
        backgroundColor: Color(0x00000000),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/item1.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ), //picture
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 30, 0, 10),
              child: Text(
                '그루스터디카페',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
              ),
            ), //item_title
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                children: [
                  Icon(
                    FontAwesomeIcons.solidStar,
                    color: Colors.amber,
                    size: 18,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '9.1',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '(199)',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey.shade400,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '후기 36개',
                    style: TextStyle(
                      fontSize: 18,
                      color: kMainColor,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined),
                      Text(
                        '월곡역 3번 출구',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text.rich(
                        TextSpan(children: <TextSpan>[
                          TextSpan(
                            text: '2000',
                            style: TextStyle(
                              color: kMainColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          TextSpan(
                            text: '원/시간',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Container(
                      child: Text.rich(
                        TextSpan(children: <TextSpan>[
                          TextSpan(
                            text: '운영시간',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: '  24시간',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ]),
                      ),
                    ),
                  ),
                  Container(
                    child: Text.rich(
                      TextSpan(children: <TextSpan>[
                        TextSpan(
                          text: '업종형태',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: '  스터디카페/독서',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              height: 85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  width: 1,
                  color: Colors.grey,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.people_alt_rounded,
                              size: 24,
                              color: kTheconColor,
                            ),
                            Text(
                              '최대 10인 동반 가능',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Text(
                          '(다인 좌석은 조기 마감될 수 있습니다.)',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 85,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: kTheconColor,
                      ),
                      child: Center(
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            '상세사진',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //TODO '공간소개' Start (Sectino2)
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      '공간소개',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: kMainColor),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: Text(
                      '<그루스터디카페 월곡역> \n 7호선 월곡역 1번 출구 도보 5분거리에 위치한 그루스터디카페 입니다. 연중무휴로 운영중이며 영업시간은 오전 9시부터 오후 12시까지 입니다. 최대 10명이 이용할 수 있는 스터디룸이 '
                      '2개가 마련되어 있습니다. 룸이 폴딩도어로 구분되어있어 7분이상 '
                      '이용시 룸이 삐어있을경우 룸을 합쳐드립나다',
                      style: TextStyle(height: 1.6, fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    child: Text(
                      '시설안내',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: kMainColor),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: double.infinity,
                    height: 400,
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      primary: false,
                      itemCount: abouts.length,
                      itemBuilder: (context, index) => PlaceAnnounce(
                        about: abouts[index],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //TODO 시얼 안내 끝 , (section3 Starts)
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      child: Container(
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.phone,
                                color: kMainColor,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '전화하기',
                                style:
                                    TextStyle(fontSize: 18, color: kMainColor),
                              ),
                            ],
                          ),
                        ),
                        height: 35,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.5, color: kMainColor),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      child: Container(
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: kMainColor,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '길찾기',
                                style:
                                    TextStyle(fontSize: 18, color: kMainColor),
                              ),
                            ],
                          ),
                        ),
                        height: 35,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.5, color: kMainColor),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Image.asset('assets/images/spacetip.png'),
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, SearchItemReserved.id);
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: kMainColor,
                ),
                child: Center(
                  child: Text(
                    '예약하기',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PlaceAnnounce extends StatelessWidget {
  final PlaceAbout about;
  const PlaceAnnounce({
    Key key,
    this.about,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(color: klightGrayBlueColor, width: 1))),
      child: Text.rich(
        TextSpan(children: <TextSpan>[
          TextSpan(
            text: about.number,
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
              text: about.discript,
              style: TextStyle(
                fontSize: 18,
              )),
        ]),
      ),
    );
  }
}

class PlaceAbout {
  final String discript, number;
  final int aim;
  PlaceAbout({this.aim, this.number, this.discript});
}

List<PlaceAbout> abouts = [
  PlaceAbout(number: '1', discript: '  10인용 테비을 &의자'),
  PlaceAbout(number: '2', discript: '  43인치 TV & HDMI 케이블선'),
  PlaceAbout(number: '3', discript: '  화장실 3개(남녀분리 / 남녀공용'),
  PlaceAbout(number: '4', discript: '  wifi, 에어콘'),
  PlaceAbout(number: '5', discript: ' Coffee bar & 거실'),
];

// Container(
// child: Column(
// children: [
// Container(
// child: Text.rich(
// TextSpan(children: <TextSpan>[
// TextSpan(text: '1'),
// ]),
// ),
// ),
// ],
// ),
// ),
