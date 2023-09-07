import 'package:flutter/material.dart';
import 'package:newapp/main.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

TextEditingController name = TextEditingController();

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            height: 820,
            width: double.infinity,
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
                  margin: EdgeInsets.only(right: 280),
                  child: Text(
                    "Login!",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  width: 360,
                  height: 300,
                  child: Card(
                    color: Color.fromARGB(65, 171, 168, 168),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  top: 20, left: 20, bottom: 20),
                              child: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(
                                      "https://i.pinimg.com/736x/ea/c2/e4/eac2e4116856ff00ca86db79243dee95.jpg")),
                            ),
                            Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 15),
                                  child: Text(
                                    "j.saravanakumar",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Text(
                                    "jsaravana@gmail.com",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        Container(
                            margin: EdgeInsets.all(10),
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
                          margin: EdgeInsets.all(10),
                          width: 340,
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
                                            const MyHomePage()));
                              },
                              child: Text("Login")),
                        ),
                        Container(
                          child: Text(
                            "Forgot your Password",
                            style: TextStyle(
                                color: const Color.fromARGB(255, 20, 207, 26),
                                fontWeight: FontWeight.bold),
                          ),
                        )
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
