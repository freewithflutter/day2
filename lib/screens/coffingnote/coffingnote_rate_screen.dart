import 'package:day2/utill/default.dart';
import 'package:flutter/material.dart';

class CoffingNoteRate extends StatefulWidget {
  static final String id = 'coffingNoteRate';
  @override
  _CoffingNoteRateState createState() => _CoffingNoteRateState();
}

class _CoffingNoteRateState extends State<CoffingNoteRate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: kTextDarkGaryColor,
        ),
        actions: [
          FlatButton(
            child: Container(
              child: Text(
                'Reset',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFFEBBB9D),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/coffingmainbg.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
