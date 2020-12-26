import 'package:day2/utill/default.dart';
import 'package:flutter/material.dart';

class BeverageMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '메뉴',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Color(0xFFF8F7F5),
        elevation: 0,
      ),
      backgroundColor: Color(0XFFF8F7F5),
      body: Container(
        child: Column(
          children: <Widget>[
            DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  Container(
                    child: TabBar(
                      labelStyle: TextStyle(
                        fontSize: 20,
                      ),
                      unselectedLabelColor: kMainColor,
                      labelColor: Colors.white,
                      indicatorColor: kMainColor,
                      tabs: [
                        Container(
                          child: Center(
                            child: Text('PLANZ'),
                          ),
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(26),
                            color: kMainColor,
                          ),
                        ),
                        Text('ROASTERY'),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(26),
                      color: Colors.white,
                    ),
                    height: 80,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    padding: EdgeInsets.only(top: 2.5),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Coffee',
                      style: TextStyle(
                          fontSize: 28,
                          color: kMainColor,
                          fontWeight: FontWeight.bold),
                    ),
                    padding: EdgeInsets.fromLTRB(20, 20, 0, 10),
                  ),
                  Container(
                    width: double.infinity,
                    height: 500,
                    child: TabBarView(
                      children: [
                        GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            childAspectRatio: 0.65,
                          ),
                          itemCount: 4,
                          itemBuilder: (context, index) => BeverageCoffee(
                            items: coffeeItem[index],
                          ),
                        ),
                        Container(
                          child: Text('2'),
                        ),
                      ],
                    ),
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

class CoffeeLists {
  CoffeeLists({this.image, this.title, this.subtitle});
  String image, title, subtitle;
}

List<CoffeeLists> coffeeItem = [
  CoffeeLists(
    image: 'assets/images/drink1.png',
    title: '브라드커피',
    subtitle: 'Brewed Coffee',
  ),
  CoffeeLists(
    image: 'assets/images/americanodrink.png',
    title: '브라둨커피',
    subtitle: 'Brewed Coffee',
  ),
  CoffeeLists(
    image: 'assets/images/latteadrink.png',
    title: '브라둨커피',
    subtitle: 'Brewed Coffee',
  ),
  CoffeeLists(
    image: 'assets/images/baniladrink.png',
    title: '저쩌구 이쩌구',
    subtitle: 'Brewed Coffee',
  ),
];

class BeverageCoffee extends StatelessWidget {
  const BeverageCoffee({
    Key key,
    this.items,
  }) : super(key: key);
  final CoffeeLists items;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 130,
          height: 200,
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Image.asset(items.image),
                  padding: EdgeInsets.symmetric(horizontal: 30),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  child: Text(
                    items.title,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 3),
                ),
                Text(
                  items.subtitle,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
