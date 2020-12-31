import 'package:day2/model/normalplace.dart';
import 'package:flutter/cupertino.dart';

class NormalPlaceSearch with ChangeNotifier {
  List<NormalPlace> _normalPlaceSearch = [
    NormalPlace(
      image: 'assets/images/rightitem.jpg',
      title: '경희대 본관(3층)',
      place: '경희대역',
      placeType: '대학교',
      aboutPlace: '어쩌구 저쩌구 이렇게 어찌 저찌 되었습니다',
      rate: 9,
      reviewCount: 31,
      price: '무료입장',
      openHour: 24,
    ),
    NormalPlace(
      image: 'assets/images/rightitem2.jpg',
      title: '경희대 본관(3층)',
      place: '경희대역',
      placeType: '대학교',
      aboutPlace: '어쩌구 저쩌구 이렇게 어찌 저찌 되었습니다',
      rate: 9,
      reviewCount: 31,
      price: '무료입장',
      openHour: 24,
    ),
    NormalPlace(
      image: 'assets/images/rightitem3.jpg',
      title: '경희대 본관(3층)',
      place: '경희대역',
      placeType: '대학교',
      aboutPlace: '어쩌구 저쩌구 이렇게 어찌 저찌 되었습니다',
      rate: 9,
      reviewCount: 31,
      price: '무료입장',
      openHour: 24,
    ),
    NormalPlace(
      image: 'assets/images/rightitme4.jpg',
      title: '경희대 본관(3층)',
      place: '경희대역',
      placeType: '대학교',
      aboutPlace: '어쩌구 저쩌구 이렇게 어찌 저찌 되었습니다',
      rate: 9,
      reviewCount: 31,
      price: '무료입장',
      openHour: 24,
    ),
  ];

  List<NormalPlace> get normalPlaceSearch => _normalPlaceSearch;

  set normalPlaceSearch(List<NormalPlace> value) {
    _normalPlaceSearch = value;
    notifyListeners();
  }
}
