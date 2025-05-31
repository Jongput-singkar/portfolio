import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(size: 25.0, color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            Spacer(flex: 3),
            TabsWeb("Home"),
            Spacer(flex: 1),
            TabsWeb("Works"),
            Spacer(flex: 1),
            TabsWeb("Blog"),
            Spacer(flex: 1),
            TabsWeb("About"),
            Spacer(flex: 1),
            TabsWeb("Contract"),
          ],
        ),
      ),
      body: ListView(
        key: PageStorageKey<String>("Timeline_item"),
        children: [
          // first section
          Container(
            height: heightDevice - 56.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 20.0,
                      ),
                      child: SansBold("Hello i'm", 15.0),
                    ),
                    SizedBox(height: 16.0),
                    SansBold("Jongput Singkar", 55.0),
                    Sans("Flutter developer", 30.0),
                    SizedBox(height: 15.0),
                    Row(
                      children: [
                        Icon(Icons.email),
                        SizedBox(width: 20.0),
                        Sans("jongput.singkar@gmail.com", 15.0),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Image.asset(
                          "assets/github.png",
                          height: 25.0,
                          width: 25.0,
                        ),
                        SizedBox(width: 20.0),
                        Sans("Jongput-singkar", 15.0),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Icon(Icons.call),
                        SizedBox(width: 20.0),
                        Sans("+66 945615394", 15.0),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Icon(Icons.location_pin),
                        SizedBox(width: 20.0),
                        Sans("35/1 warinchamrap ubonrachatanee 34190", 15.0),
                      ],
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 147.0,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    radius: 143.0,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 140.0,
                      backgroundImage: AssetImage("assets/icon-512.png"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // second section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/web.jpg", height: heightDevice / 1.7),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                height: heightDevice / 1.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansBold("About me", 40.0),
                    SizedBox(height: 15.0),
                    Container(
                      width: widthDevice / 2.5,
                      child: Sans(
                        "Former Automation Engineer pivoting into software development with a strong interest in Flutter and cross-platform mobile app development. Experienced in system integration, embedded programming, and UI design through real-world projects involving PLCs, Arduino, ESP32, and Node-RED. Recently focused on building mobile applications using Flutter and Dart, applying engineering problem-solving skills to software challenges. Proficient in Git, REST APIs, and modern development tools. Eager to grow as Flutter Developer and contribute to impactful, user-focused applications in a fast-moving development team.",
                        15,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.tealAccent,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: EdgeInsets.all(7.0),
                          child: Sans("flutter", 15.0),
                        ),
                        SizedBox(width: 7.0),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.tealAccent,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: EdgeInsets.all(7.0),
                          child: Sans("firebase", 15.0),
                        ),
                        SizedBox(width: 7.0),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          // third section
          Container(
            height: heightDevice / 1.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold("What i do?", 40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AnimatedCardWeb(
                      imagePath: "assets/webL.png",
                      text: "Web development",
                    ),
                    AnimatedCardWeb(
                      imagePath: 'assets/app.png',
                      text: "App development",
                      fit: BoxFit.contain,
                      reverse: true,
                    ),
                    AnimatedCardWeb(
                      imagePath: "assets/firebase.png",
                      text: "Back-end development",
                    ),
                  ],
                ),
              ],
            ),
          ),
          // fourth section
          Container(
            height: heightDevice - 56.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SansBold("Contact me", 40.0),
                SizedBox(height: 30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextForm(
                          heading: "First Name",
                          hintText: "Enter first name here",
                          width: 350.0,
                        ),
                        SizedBox(height: 15.0),
                        TextForm(
                          heading: "Email",
                          hintText: "Enter your email here",
                          width: 350.0,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        TextForm(
                          heading: "Last Name",
                          width: 350.0,
                          hintText: "Enter last name here",
                        ),
                        SizedBox(height: 15.0),
                        TextForm(
                          heading: "Phone number",
                          width: 350.0,
                          hintText: "Please type your phone number",
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 50.0),
                TextForm(
                  heading: "Message",
                  width: widthDevice / 1.5,
                  hintText: "message here",
                  maxLine: 6,
                ),
                SizedBox(height: 10.0),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  height: 60.0,
                  minWidth: 200.0,
                  color: Colors.tealAccent,
                  child: SansBold("Submit", 20.0),
                  elevation: 20.0,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      drawer: Drawer(),
    );
  }
}
