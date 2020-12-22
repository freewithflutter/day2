import 'package:day2/screens/searchitem/searchitem_about_screen.dart';
import 'package:flutter/material.dart';
import 'package:day2/utill/default.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchItemActive extends StatefulWidget {
  @override
  _SearchItemActiveState createState() => _SearchItemActiveState();
}

class _SearchItemActiveState extends State<SearchItemActive> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Container(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Icon(Icons.arrow_back_ios),
                  Expanded(
                    child: SizedBox(
                      height: 42,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1, color: klightGrayBlueColor),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1, color: klightGrayBlueColor),
                          ),
                          hintText: '지역,지하철역으로 검색하세요',
                          hintStyle: TextStyle(color: kSearchTextColor),
                          suffixIcon: Icon(
                            FontAwesomeIcons.timesCircle,
                            color: kSearchDarkTextColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: DefaultTabController(
                length: 2,
                initialIndex: 0,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: TabBar(
                        indicatorColor: kMainColor,
                        labelColor: kMainColor,
                        labelStyle: TextStyle(fontWeight: FontWeight.bold),
                        unselectedLabelColor: Color(0xFF4F4F4F),
                        unselectedLabelStyle: TextStyle(
                          fontWeight: FontWeight.w300,
                        ),
                        tabs: [
                          Tab(
                            child: Text(
                              '플랜즈 공간',
                              style: TextStyle(
                                fontSize: 22,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              '일반공간',
                              style: TextStyle(
                                fontSize: 22,
                              ),
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 1,
                            color: Color(0xFFDADADA),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: klightGrayBlueColor,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Icon(
                                  Icons.calendar_today_outlined,
                                  size: 28,
                                ),
                              ),
                              Text(
                                '10월 17일',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_drop_down_circle_sharp,
                            color: Colors.grey.shade500,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      height: 50,
                      color: ksizedBoxColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text.rich(
                            TextSpan(children: <TextSpan>[
                              TextSpan(
                                text: '12',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: '검색결과',
                              ),
                            ]),
                          ),
                          Row(
                            children: [
                              Icon(Icons.keyboard_arrow_down_rounded),
                              Text('가까운 거리 순서')
                            ],
                          ),
                        ],
                      ),
                    ),
                    //TODO item Lists starts  (section 2)
                    //SearchItemLists()
                    Container(
                      height: 1000,
                      width: double.infinity,
                      child: TabBarView(
                        children: [
                          Container(
                            child: GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 1,
                                      mainAxisSpacing: 10,
                                      childAspectRatio: 1.4),
                              itemCount: 4,
                              itemBuilder: (context, index) => SearchItemLists(
                                item: items[index],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: 100,
                              color: Colors.lightGreen,
                              height: 100,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchItemLists extends StatelessWidget {
  const SearchItemLists({
    Key key,
    this.item,
  }) : super(key: key);
  final ItemLists item;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, SearchItemAbout.id);
            },
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(item.image),
                          repeat: ImageRepeat.repeat,
                          fit: BoxFit.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      item.title,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 3),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: klightGrayBlueColor,
                          ),
                          Text(item.place)
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow.shade700,
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                child: Text(
                                  item.rate,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: kTextDarkGaryColor,
                                  ),
                                ),
                              ),
                              Text(
                                item.rateLength,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: kTextlighGaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: item.price,
                                  style: TextStyle(
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold,
                                    color: kMainColor,
                                  ),
                                ),
                                TextSpan(
                                  text: '원/시간',
                                  style: TextStyle(
                                    fontSize: 21,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      padding: EdgeInsets.only(top: 10, bottom: 0),
    );
  }
}

class ItemLists {
  final String image, title, place, price, rate, rateLength;
  ItemLists({
    this.image,
    this.title,
    this.place,
    this.price,
    this.rate,
    this.rateLength,
  });
}

List<ItemLists> items = [
  ItemLists(
    title: "그루스터디카페",
    price: "2000",
    rate: '9.2',
    rateLength: '(32)',
    place: "월곡역",
    image: "assets/images/item1.jpg",
  ),
  ItemLists(
    title: "델리에 파티",
    price: "4000",
    place: "건대입구역",
    rate: '8.7',
    rateLength: '(52)',
    image: "assets/images/item2.jpeg",
  ),
  ItemLists(
    title: "위워크 성수역점",
    price: "3500",
    place: "성수역",
    rate: '9.5',
    rateLength: '(12)',
    image: "assets/images/item3.jpg",
  ),
  ItemLists(
    title: "팝스터디카페",
    price: '2500',
    place: "수유역",
    rate: '6.4',
    rateLength: '(112)',
    image: "assets/images/item4.jpg",
  ),
];
