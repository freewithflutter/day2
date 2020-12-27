import 'package:day2/model/place.dart';
import 'package:flutter/material.dart';

class PlaceSearch with ChangeNotifier {
  // Place(this.name, this.rating, this.reviewCount, this.location, this.price,
  //     this.openHour, this.type, this.description);

  List<Place> _placeList = [
    Place('그루스터디카페', 9.2, 32, '월곡역 3번출구', 2000, 24, '스터디카페/독서실',
        '그루스터디카페\n그루스터디카페그루스터디카페그루스터디카페그루스터디카페그루스터디카페'),
    Place('플렅카페', 9.2, 32, '월곡역 3번출구', 3000, 24, '스터디카페/독서실',
        '그루스터디카페\n그루스터디카페그루스터디카페그루스터디카페그루스터디카페그루스터디카페'),
    Place('리액트카페', 9.2, 32, '월곡역 3번출구', 4000, 24, '스터디카페/독서실',
        '그루스터디카페\n그루스터디카페그루스터디카페그루스터디카페그루스터디카페그루스터디카페'),
  ];

  // http => server 요청

  List<Place> get placeList => _placeList;

  set placeList(List<Place> value) {
    _placeList = value;
    notifyListeners();
  }
}
