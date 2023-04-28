import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';

class AboutWeb extends StatefulWidget {
  const AboutWeb({Key? key}) : super(key: key);

  @override
  State<AboutWeb> createState() => _AboutWebState();
}

class _AboutWebState extends State<AboutWeb> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    tealContainer(String text) {
      return Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.tealAccent,
            style: BorderStyle.solid,
            width: 2.0,
          ),
        ),
        padding: EdgeInsets.all(7.0),
        child: Text(
          text,
          style: GoogleFonts.openSans(fontSize: 15.0),
        ),
      );
    }

    urlLauncher(String imgPath, String url) {
      return IconButton(
        icon: SvgPicture.asset(
          imgPath,
          color: Colors.black,
          width: 35.0,
        ), //we used svg dependency for it
        onPressed: () async {
          await launchUrl(Uri.parse(url));
        },
      );
    }

    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 72.0,
              backgroundColor: Colors.tealAccent,
              child: CircleAvatar(
                radius: 70.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage(
                  "assets/Karthik Kollur.jpg",
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            SansBold("Karthik Kollur", 30.0),
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                urlLauncher("assets/instagram.svg",
                    "https://www.instagram.com/karthik_kollur/"),
                urlLauncher("assets/twitter.svg", "https://www.twitter.com/"),
                urlLauncher("assets/github.svg", "https://www.github.com/"),
              ],
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(size: 25.0, color: Colors.black),
        //it sets the them data of all the icons in AppBar so that we dont have to write colors and all for every icons we create
        title: Row(
          children: [
            Spacer(
              flex: 3,
            ),
            TabsWeb(
              title: "Home",
              route: '/',
            ),
            Spacer(),
            TabsWeb(
              title: "Works",
              route: '/works',
            ),
            Spacer(),
            TabsWeb(
              title: "Blog",
              route: '/blog',
            ),
            Spacer(),
            TabsWeb(
              title: "About",
              route: '/about',
            ),
            Spacer(),
            TabsWeb(
              title: "Contact",
              route: '/contact',
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          //about me,first section
          SizedBox(
            height: 500.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansBold("About me", 40.0),
                    SizedBox(
                      height: 15.0,
                    ),
                    Sans(
                        "Hello I'm karthik I specialized in flutter development",
                        15.0),
                    Sans(
                        "I strive to ensure astonding performance with state of",
                        15.0),
                    Sans(
                        "the art security for Android, IOS, Web, Linux and Windows",
                        15.0),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        tealContainer("Flutter"),
                        SizedBox(
                          width: 7.0,
                        ),
                        tealContainer("Firebase"),
                        SizedBox(
                          width: 7.0,
                        ),
                        tealContainer("Android"),
                        SizedBox(
                          width: 7.0,
                        ),
                        tealContainer("IOS"),
                        SizedBox(
                          width: 7.0,
                        ),
                        tealContainer("Windows")
                      ],
                    )
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
                      backgroundColor: Colors.white,
                      child: Image.asset(
                        "assets/Karthik Kollur-circle.png",
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //Web development,second section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedCard(
                imagePath: "web_dev_img.png",
                height: 250.0,
                width: 250.0,
                fit: BoxFit
                    .cover, //added after deploying,bcz this image not displayed
              ),
              SizedBox(
                width: widthDevice / 3.0,
                child: Column(
                  children: [
                    SansBold(
                      "Web Development",
                      30.0,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Sans(
                        "I'm here to build your presence online with state of the art web apps",
                        15.0),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: widthDevice / 3.0,
                child: Column(
                  children: [
                    SansBold("App development", 30.0),
                    SizedBox(
                      height: 15.0,
                    ),
                    Sans(
                        "Do you need a high-performance, responsive and beautiful app? Don't worry, I've got you covered.",
                        15.0),
                  ],
                ),
              ),
              AnimatedCard(
                imagePath: "assets/app.png",
                height: 250.0,
                width: 250.0,
                reverse: true,
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
          //Back-end development section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedCard(
                imagePath: "assets/firebase.png",
                height: 250.0,
                width: 250.0,
              ),
              SizedBox(
                width: widthDevice / 3.0,
                child: Column(
                  children: [
                    SansBold(
                      "Back-end Development",
                      30.0,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Sans(
                        "Do you want your back-end to be highly scalable and secure? Lets have a conversation on how I can help you with that.",
                        15.0),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40.0,
          ),
        ],
      ),
    );
  }
}
