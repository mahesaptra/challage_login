import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Challage"),
      // ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.max,
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
              ),
              controller: emailController,
            ),
            Container(
              margin: EdgeInsets.all(10),
            ),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                hintText: "Password",
                suffix: TextButton(onPressed: () {}, child: Text("Forgot?")),
                suffixStyle: TextStyle(color: Colors.blue, fontSize: 15),
              ),
              controller: emailController,
            ),

            Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('Login'),
                      onPressed: () {
                      
                      },
                    )),
          ],
        ),
      ),

    );
  }
}
