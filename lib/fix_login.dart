import 'package:flutter/material.dart';

class LoginFix extends StatefulWidget {
  const LoginFix({Key? key}) : super(key: key);

  @override
  _LoginFixState createState() => _LoginFixState();
}

class _LoginFixState extends State<LoginFix> {
    TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all(20),
          child: ListView(
         
            children: <Widget>[
              Align(
                alignment: Alignment.topCenter,
                child: Image(
                    image: AssetImage("assets/login_screen_image.png"),
                    height: 200,
                    fit: BoxFit.contain),
              ),
              Container(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 20),
              alignment: Alignment.centerLeft,
              child: Text(
                "Login",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
           
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.mail),
                hintText: "Email ID",
                // border: Border(
                //   bottom: BorderSide(color: Colors.grey),
                // ),
              ),
              controller: emailController,
            ),
            Container(
            
                    height: 50,
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('Login'),
                      onPressed: () {
                       
                      },
                    )),
            ],
          )),
    );
  }
}
