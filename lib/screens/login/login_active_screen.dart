import 'package:day2/utill/default.dart';
import 'package:flutter/material.dart';

class LoginActivePage extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  static final String id = 'loginActivePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.center,
        child: Column(
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 130,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Text(
                'Welcome to Planz',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              ),
            ),
            Text(
              '로그인 해주세요',
              style: TextStyle(
                color: Color(0xFF9098B1),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                    height: 48,
                    child: TextFormField(
                      // ignore: missing_return
                      validator: (String value) {
                        // ignore: unnecessary_statements, missing_return
                        value.isEmpty ? "이메일을 입력해주세요" : null;
                      },
                      controller: _emailController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.mail_outline),
                        prefixStyle: TextStyle(
                          color: Colors.black,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: klightGrayBlueColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: klightGrayBlueColor),
                        ),
                        hintText: '이메일',
                        hintStyle: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 48,
                    child: TextFormField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock_outline_rounded),
                        prefixStyle: TextStyle(
                          color: Colors.black,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: klightGrayBlueColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: klightGrayBlueColor),
                        ),
                        hintText: '비밀번호',
                        hintStyle: TextStyle(
                          fontSize: 14,
                        ),
                      ),
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
