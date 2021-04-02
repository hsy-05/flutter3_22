import 'package:flutter/material.dart';
import 'helpers/Constants.dart';

// 1
class LoginPage extends StatelessWidget {
  // 2
  final _pinCodeController = TextEditingController();

  // 3
  @override
  Widget build(BuildContext context) {
    // 3a
    final logo = CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: bigRadius,
      child: appLogo,
    );
    // 3b

    // 3c
    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(26),
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/login');
          },
          padding: EdgeInsets.all(12),
          elevation: 3,
          color: Colors.white,
          child: Text(loginButtonText),
        ),
      ),
    );

    final RegisterButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(26),
          ),onPressed: () {
          Navigator.pushNamed(context, '/register');
        },

          padding: EdgeInsets.all(12),
          elevation: 3,
          color: Colors.white,
          child: Text(RegisterButtonText),
        ),
      ),
    );

    // 3d
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).canvasColor,
        iconTheme: IconThemeData(
          color: Colors.grey, //change your color here
        ),
      ),
      body: Center(
    child: ListView(
    shrinkWrap: true,
          children: <Widget>[
            SizedBox(
              height: 16,
            ),
            Row(
              children: <Widget>[
                Hero(
                  tag: "main-logo",
                  child: SizedBox(
                    height: 80,
                    child: Image.asset('assets/images/drug.jpg'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0, left: 50.0),
                  child: Text(
                    "智慧藥盒",
                    style: TextStyle(fontSize: 28, letterSpacing: 8.0),
                  ),
                ),
              ],
            ),
            Expanded(
              flex: 1,
              child: Stack(
                children: <Widget>[
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 60, right: 60),
                          child: Form(
                            autovalidate: false,
                            child: Column(
                              children: <Widget>[
                                TextFormField(
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.fromLTRB(
                                        20.0, 15.0, 20.0, 15.0),
                                    labelText: "帳號",
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0)),
                                  ),
                                ),
                                SizedBox(
                                  height: 26,
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.fromLTRB(
                                        20.0, 15.0, 20.0, 15.0),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0)),
                                    labelText: "密碼",
                                    hintText: "請輸入密碼",
                                  ),
                                ),
                                SizedBox(
                                  height: 26,
                                ),
                                SizedBox(height: buttonHeight),
                                loginButton,
                                RegisterButton
                              ],
                            ),
                          ),
                        ),
                      ]),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
