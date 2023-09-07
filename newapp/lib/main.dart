import 'package:flutter/material.dart';
import 'package:newapp/pages/loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

TextEditingController name = TextEditingController();

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 820,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 61, 57, 57),
              image: DecorationImage(
                  image: NetworkImage(
                      "https://c4.wallpaperflare.com/wallpaper/569/651/684/beautiful-girl-pic-1920x1080-wallpaper-preview.jpg"),
                  fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                SizedBox(height: 250),
                Container(
                  margin: EdgeInsets.only(right: 300),
                  child: Text("Hi!",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 350,
                  height: 480,
                  child: Card(
                    color: Color.fromARGB(65, 171, 168, 168),
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.all(20),
                            child: TextField(
                              controller: name,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Colors.green,
                                      width: 1.0,
                                    )),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                    width: 2.0,
                                  ),
                                ),
                                hintText: 'Your Text',
                                labelStyle: TextStyle(
                                  fontSize: 24,
                                  color: Colors.black,
                                ),
                                fillColor: Colors.white,
                                filled: true,
                              ),
                            )),
                        Container(
                          width: 300,
                          height: 50,
                          child: TextButton(
                              style: TextButton.styleFrom(
                                primary: Colors.black,
                                backgroundColor:
                                    Colors.green, // Background Color
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Loginpage()));
                              },
                              child: Text("continue")),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            alignment: Alignment.center,
                            child: Text("or",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold))),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 284,
                          height: 50,
                          margin: EdgeInsets.all(10),
                          color: Colors.white,
                          child: Row(children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: CircleAvatar(
                                radius: 15,
                                backgroundImage: NetworkImage(
                                    "https://w7.pngwing.com/pngs/326/85/png-transparent-google-logo-google-text-trademark-logo.png"),
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                              child: Text("Continue with google"),
                            )
                          ]),
                        ),
                        Container(
                          width: 284,
                          height: 50,
                          margin: EdgeInsets.all(10),
                          color: Colors.white,
                          child: Row(children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: CircleAvatar(
                                radius: 15,
                                backgroundImage: NetworkImage(
                                    "https://1000logos.net/wp-content/uploads/2021/04/Facebook-logo.png"),
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                              child: Text("Continue with facebook"),
                            )
                          ]),
                        ),
                        Container(
                          width: 284,
                          height: 50,
                          margin: EdgeInsets.all(10),
                          color: Colors.white,
                          child: Row(children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: CircleAvatar(
                                radius: 15,
                                backgroundImage: NetworkImage(
                                    "https://cdn.mos.cms.futurecdn.net/6bTF6C2QiWXvhi33fJi3AC-1200-80.jpg"),
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                              child: Text("Continue with apple"),
                            )
                          ]),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Do you have an account?",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                            Container(
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 18, 231, 25),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 30),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Forgot Your Password ?",
                            style: TextStyle(
                                color: Color.fromARGB(255, 18, 231, 25),
                                fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
