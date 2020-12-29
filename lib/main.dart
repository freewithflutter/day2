import 'package:day2/home.dart';
import 'package:day2/provider/PlaceSearch.dart';
import 'package:day2/screens/coffingnote/coffingnote_iteminfo_screen.dart';
import 'package:day2/screens/coffingnote/coffingnote_main_screen.dart';
import 'package:day2/screens/coffingnote/coffingnote_rate_screen.dart';
import 'package:day2/screens/coupon/coupon_lists_screen.dart';
import 'package:day2/screens/home__screen.dart';
import 'package:day2/screens/searchitem/searchitem_about_screen.dart';
import 'package:day2/screens/searchitem/searchitem_final_screen.dart';
import 'package:day2/screens/searchitem/searchitem_reserve_scree.dart';
import 'package:flutter/material.dart';
import 'package:flutter_page_indicator/flutter_page_indicator.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:day2/utill/default.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List _imageList = ["asset"];
  bool pressed = true;
  Switch selectedSwitch;
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider.value(value: PlaceSearch())],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primaryColor: kMainColor),
        home: Scaffold(
          // appBar: PreferredSize(
          //   preferredSize: Size(double.infinity, -5),
          //   child: AppBar(
          //     title: Column(
          //       children: [
          //         SizedBox(
          //           height: 5,
          //         ),
          //       ],
          //     ),
          //     backgroundColor: Colors.white,
          //     elevation: 0,
          //   ),
          // ),
          body: Home(),
        ),
        routes: {
          HomeScreen.id: (context) => HomeScreen(),
          SearchItemAbout.id: (context) => SearchItemAbout(),
          SearchItemReserved.id: (context) => SearchItemReserved(),
          SearchReservedDone.id: (context) => SearchReservedDone(),
          CouponLists.id: (context) => CouponLists(),
          CoffingNoteMain.id: (context) => CoffingNoteMain(),
          CoffingNoteItemInfo.id: (context) => CoffingNoteItemInfo(),
          CoffingNoteRate.id: (context) => CoffingNoteRate(),
        },
      ),
    );
  }
}

class Popup extends StatelessWidget {
  const Popup({
    Key key,
    this.popup,
  }) : super(key: key);
  final PopupLists popup;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        margin: EdgeInsets.only(right: 10),
        child: new Image.asset(
          popup.image,
          width: 340,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class FlanzItem extends StatelessWidget {
  const FlanzItem({
    Key key,
    this.item,
  }) : super(key: key);
  final ItemLists item;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Image.asset(
              item.image,
              fit: BoxFit.cover,
            ),
            width: 200,
            height: 140,
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              item.title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              Icon(Icons.location_on_outlined, color: klightGrayBlueColor),
              Text(item.place)
            ],
          ),
          Container(
            width: 200,
            alignment: Alignment.bottomRight,
            child: Text.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: item.price,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: kMainColor,
                    ),
                  ),
                  TextSpan(
                    text: '원/시간',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FlanzRightItem extends StatelessWidget {
  const FlanzRightItem({
    Key key,
    this.rightItem,
  }) : super(key: key);
  final ItemRightLists rightItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Image.asset(
              rightItem.image,
              fit: BoxFit.cover,
            ),
            width: 200,
            height: 140,
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              rightItem.title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              Icon(Icons.location_on_outlined, color: klightGrayBlueColor),
              Text(rightItem.place)
            ],
          ),
          Container(
            width: 200,
            alignment: Alignment.bottomRight,
            child: Text.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: rightItem.price,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: kMainColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ItemLists {
  final String image, title, place, price;
  ItemLists({
    this.image,
    this.title,
    this.place,
    this.price,
  });
}

List<ItemLists> items = [
  ItemLists(
    title: "그루스터디카페",
    price: "2000",
    place: "월곡역",
    image: "assets/images/item1.jpg",
  ),
  ItemLists(
    title: "델리에 파티",
    price: "4000",
    place: "건대입구역",
    image: "assets/images/item2.jpeg",
  ),
  ItemLists(
    title: "위워크 성수역점",
    price: "3500",
    place: "성수역",
    image: "assets/images/item3.jpg",
  ),
  ItemLists(
    title: "팝스터디카페",
    price: '2500',
    place: "수유역",
    image: "assets/images/item4.jpg",
  ),
];

class ItemRightLists {
  final String image, title, place, price;
  ItemRightLists({
    this.image,
    this.title,
    this.place,
    this.price,
  });
}

List<ItemRightLists> rightItems = [
  ItemRightLists(
    title: "경희대 본관(3층)",
    price: "무료입장",
    place: "경희대역",
    image: "assets/images/rightitem.jpg",
  ),
  ItemRightLists(
    title: "가천대 새롬관(1층)",
    price: "무료입장",
    place: "가천대역",
    image: "assets/images/rightitem2.jpg",
  ),
  ItemRightLists(
    title: "위워크 강남(1층 로비)",
    price: "회원입장",
    place: "강남역",
    image: "assets/images/rightitem3.jpg",
  ),
  ItemRightLists(
    title: "국민대 IT관(로비)",
    price: "무료입장",
    place: "길음역",
    image: "assets/images/rightitme4.jpg",
  ),
];

class PopupLists {
  final String image;
  PopupLists({
    this.image,
  });
}

List<PopupLists> popupLists = [
  PopupLists(
    image: "assets/images/popup1.png",
  ),
  PopupLists(
    image: "assets/images/popup2.png",
  ),
];
