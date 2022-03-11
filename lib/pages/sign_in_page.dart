import 'package:flutter/material.dart';
import 'package:real_registration_ui/pages/home_page.dart';
import 'package:real_registration_ui/pages/sign_up_page.dart';
class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  static const String id = "sign_in_page";

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  _doSignIn(){

    String email = emailController.text;
    String password = passwordController.text;

    if(email.isNotEmpty && password.isNotEmpty){
      Navigator.pushReplacementNamed(context, HomePage.id);
    }else{
      print("No inform");
    }

  }

  _doSignUp(){
    Navigator.pushReplacementNamed(context, SignUpPage.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Instagram", style: TextStyle(fontSize: 45, fontFamily: 'Billabong'),),

              //#email
              Container(
                height: 50,
                margin: EdgeInsets.only(right: 20, left: 20, top: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey.shade200
                ),
                child: TextField(
                  controller: emailController,
                  style: TextStyle(fontSize: 16),
                  decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.grey),
                    contentPadding: EdgeInsets.all(10),
                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal))
                  ),
                ),
              ),

              //#password
              Container(
                height: 50,
                margin: EdgeInsets.only(right: 20, left: 20, top: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey.shade200
                ),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  style: TextStyle(fontSize: 16),
                  decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal))
                  ),
                ),
              ),

              //#login
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(right: 20, left: 20, top: 15),
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: FlatButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("Sign In", style: TextStyle(fontSize: 16),),
                  onPressed: _doSignIn,
                ),
              ),

              Container(
                margin: EdgeInsets.only(right: 20, left: 20, top: 15),
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Don't have an account ?", style: TextStyle(color: Colors.grey, fontSize: 16),),
                    SizedBox(width: 10,),
                    GestureDetector(
                      child: Text("Sign Up", style: TextStyle(color: Colors.black, fontSize: 16),),
                      onTap: _doSignUp,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
