import 'package:flutter/material.dart';

class MainRegister extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Image(
                  image: AssetImage("assets/login_screen_image.png"),
                  height: 200,
                  fit: BoxFit.contain),
            )),
        Align(
          alignment: Alignment.center,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    height: 40,
                    width: 150,
                    margin: EdgeInsets.fromLTRB(20, 10, 5, 15),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      color: Colors.white,
                      child: Icon(Icons.facebook),
                      onPressed: () {},
                    )),
                Container(
                    height: 40,
                    width: 150,
                    margin: EdgeInsets.fromLTRB(0, 20, 5, 15),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      child: Icon(Icons.facebook),
                      onPressed: () {},
                    )),
                Container(
                    height: 40,
                    width: 150,
                    margin: EdgeInsets.fromLTRB(0, 20, 15, 15),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      child: Icon(Icons.facebook),
                      color: Colors.white,
                      onPressed: () {},
                    )),
              ]),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 90, 0, 0),
          alignment: Alignment.center,
          child: Text(
            "Or, register with email",
            style: TextStyle(fontSize: 10, color: Colors.grey),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(40, 250, 0, 10),
          alignment: Alignment.topLeft,
          child: Text(
            "Register",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(20, 370, 20, 10),
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Column(children: <Widget>[
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
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      hintText: "Password",
                      suffix:
                          TextButton(onPressed: () {}, child: Text("Forgot?")),
                      suffixStyle: TextStyle(color: Colors.blue, fontSize: 15),
                    ),
                    controller: passwordController,
                  ),
                   Container(
                    margin: EdgeInsets.all(10),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: "FullName",
                      suffix:
                          TextButton(onPressed: () {}, child: Text("Forgot?")),
                      suffixStyle: TextStyle(color: Colors.blue, fontSize: 15),
                    ),
                    controller: passwordController,
                  ),
                   Container(
                    margin: EdgeInsets.all(10),
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.store),
                      hintText: "Company Name",
                      suffix:
                          TextButton(onPressed: () {}, child: Text("Forgot?")),
                      suffixStyle: TextStyle(color: Colors.blue, fontSize: 15),
                    ),
                    controller: passwordController,
                  ),
                ]),
              ),
            
            ],
          ),
        )
      ],
    ));
  }
}
