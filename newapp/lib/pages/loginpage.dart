import 'package:flutter/material.dart';
import 'package:newapp/pages/signuppage.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

TextEditingController name = TextEditingController();

class _LoginpageState extends State<Loginpage> {
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
                  margin: EdgeInsets.only(right: 250),
                  child: Text(
                    "Sign Up!",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 360,
                  child: Card(
                    color: Color.fromARGB(65, 171, 168, 168),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 70, top: 10),
                          child: Text(
                            "Looks like you don't have an account,",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 115),
                          child: Text("lets create a new account for,",
                              style: TextStyle(color: Colors.white)),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 175),
                          child: Text("jane.doe2gmai.com",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Container(
                            margin: EdgeInsets.all(20),
                            child: TextField(
                              controller: name,
                              decoration: InputDecoration(
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
                            margin: EdgeInsets.all(20),
                            child: TextField(
                              controller: name,
                              decoration: InputDecoration(
                                hintText: 'password',
                                labelStyle: TextStyle(
                                  fontSize: 24,
                                  color: Colors.black,
                                ),
                                fillColor: Colors.white,
                                filled: true,
                              ),
                            )),
                        Container(
                          margin: EdgeInsets.only(right: 40),
                          child: Text("By Selecting Agree and Continiue below,",
                              style: TextStyle(color: Colors.white)),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                              child: Text("I agree to ",
                                  style: TextStyle(color: Colors.white)),
                            ),
                            Container(
                              child: Text(
                                  " Terms of Sevices and Privacy policy",
                                  style: TextStyle(
                                      color:
                                          const Color.fromARGB(255, 5, 190, 11),
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.all(20),
                          width: 350,
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
                                        builder: (context) => const Signup()));
                              },
                              child: Text("Agree and continue")),
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
