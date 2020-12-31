import 'package:day2/model/place.dart';
import 'package:flutter/material.dart';

class PlaceSearch with ChangeNotifier {
  // Place(this.name, this.rating, this.reviewCount, this.location, this.price,
  //     this.openHour, this.type, this.description);

  List<Place> _placeList = [
    Place(
        image: "assets/images/item1.jpg",
        name: '그루스터디카페',
        rating: 9.2,
        reviewCount: 32,
        location: '월곡역 3번 출구',
        price: 2000,
        openHour: 24,
        type: '스터디카페/독서실',
        description: '그루스터디카페\n그루스터디카페그루스터디카페그루스터디카페그루스터디카페그루스터디카페'),
    Place(
        image: "assets/images/item2.jpeg",
        name: '그루스터디카페',
        rating: 9.2,
        reviewCount: 32,
        location: '월곡역 3번 출구',
        price: 2000,
        openHour: 24,
        type: '스터디카페/독서실',
        description: '그루스터디카페\n그루스터디카페그루스터디카페그루스터디카페그루스터디카페그루스터디카페'),
    Place(
        image: "assets/images/item3.jpg",
        name: '그루스터디카페',
        rating: 9.2,
        reviewCount: 32,
        location: '월곡역 3번 출구',
        price: 2000,
        openHour: 24,
        type: '스터디카페/독서실',
        description: '그루스터디카페\n그루스터디카페그루스터디카페그루스터디카페그루스터디카페그루스터디카페'),
    Place(
        image: "assets/images/item4.jpg",
        name: '그루스터디카페',
        rating: 9.2,
        reviewCount: 32,
        location: '월곡역 3번 출구',
        price: 2000,
        openHour: 24,
        type: '스터디카페/독서실',
        description: '그루스터디카페\n그루스터디카페그루스터디카페그루스터디카페그루스터디카페그루스터디카페'),
  ];

  // http => server 요청

  List<Place> get placeList => _placeList;

  set placeList(List<Place> value) {
    _placeList = value;
    notifyListeners();
  }
}
