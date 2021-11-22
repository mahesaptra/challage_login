import 'package:flutter/material.dart';

class MainLogin extends StatelessWidget {
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
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Image(
                  image: AssetImage("assets/regis.png"),
                  height: 200,
                  fit: BoxFit.contain),
            )),
        Container(
          padding: EdgeInsets.fromLTRB(40, 250, 0, 10),
          alignment: Alignment.topLeft,
          child: Text(
            "Login",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(20, 290, 20, 10),
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
                  )
                ]),
              ),
              Container(
                  height: 50,
                  margin: EdgeInsets.fromLTRB(15, 20, 15, 0),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    textColor: Colors.white,
                    color: Colors.blue,
                    child: Text('Login'),
                    onPressed: () {},
                  )),
              Container(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                alignment: Alignment.bottomCenter,
                child: Text(
                  "Or, login with...",
                  style: TextStyle(fontSize: 10, color: Colors.grey),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                          height: 40,
                          width: 150,
                          margin: EdgeInsets.fromLTRB(20, 20, 5, 15),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
              
                children: <Widget>[
                Container(
                  margin: EdgeInsets.all(10),
                ),
                 Text(
                    "New to iThickLogistics?  ",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                Text(
                    "Register",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.blue,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ],
            
          ),
          
        )
      ],
    ));
  }
}
