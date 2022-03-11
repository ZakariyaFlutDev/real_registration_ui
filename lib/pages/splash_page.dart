import 'dart:async';

import 'package:flutter/material.dart';
import 'package:real_registration_ui/pages/home_page.dart';
import 'package:real_registration_ui/pages/sign_in_page.dart';
class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  static const String id = "splash_page";

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  var isLoggedIn = false;

  _initTimer(){
    Timer(const Duration(seconds: 2), (){
      if(isLoggedIn){
        Navigator.pushReplacementNamed(context, HomePage.id);
      } else{
        Navigator.pushReplacementNamed(context, SignInPage.id);
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(50),
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            Center(
              child:  Image.asset("assets/images/ic_logo.png",width: 80, height: 80,),
              ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Center(
                    child: Text("From Facebook", style: TextStyle(color: Colors.black, fontSize: 18),)
                    ,
                  )
                ],
              ),
            )

          ],
        ),
      ),

    );
  }
}
