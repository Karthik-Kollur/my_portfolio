import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';

class AboutMobile extends StatefulWidget {
  const AboutMobile({Key? key}) : super(key: key);

  @override
  State<AboutMobile> createState() => _AboutMobileState();
}

class _AboutMobileState extends State<AboutMobile> {
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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        //While Scrolling AppBar should not come Over
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(size: 35.0, color: Colors.black),
        ),
        endDrawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DrawerHeader(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 2.0, color: Colors.black),
                  ),
                  child: Image.asset("assets/Karthik Kollur-circle.png",
                      filterQuality: FilterQuality.high),
                ),
              ),
              TabsMobile(text: "home", route: "/"),
              SizedBox(
                height: 20.0,
              ),
              TabsMobile(text: "Works", route: '/works'),
              SizedBox(
                height: 20.0,
              ),
              TabsMobile(text: "Blogs", route: '/blog'),
              SizedBox(
                height: 20.0,
              ),
              TabsMobile(text: "About", route: '/about'),
              SizedBox(
                height: 20.0,
              ),
              TabsMobile(text: "Contact", route: '/contact'),
              SizedBox(
                height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () async => await launchUrl(
                      Uri.parse("https://www.instagram.com/karthik_kollur/"),
                    ),
                    icon: SvgPicture.asset(
                      "assets/instagram.svg",
                      color: Colors.black,
                      width: 35.0,
                    ),
                  ),
                  IconButton(
                    onPressed: () async => await launchUrl(
                      Uri.parse("https://www.twitter.com/"),
                    ),
                    icon: SvgPicture.asset(
                      "assets/twitter.svg",
                      color: Colors.black,
                      width: 35.0,
                    ),
                  ),
                  IconButton(
                    onPressed: () async => await launchUrl(
                      Uri.parse("https://www.github.com/"),
                    ),
                    icon: SvgPicture.asset(
                      "assets/github.svg",
                      color: Colors.black,
                      width: 35.0,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ListView(
            children: [
              //Introduction First Section
              CircleAvatar(
                radius: 117.0,
                backgroundColor: Colors.tealAccent,
                child: CircleAvatar(
                  radius: 113.0,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 110.0,
                    backgroundColor: Colors.white,
                    child: Image.asset(
                      "assets/Karthik Kollur-circle.png",
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansBold("About me", 35.0),
                    SizedBox(
                      height: 10.0,
                    ),
                    Sans(
                        "Hello I'm Karthik I specialize in Flutter development",
                        15.0),
                    Sans(
                        "I strive to ensure astonding performance with state of",
                        15.0),
                    Sans("the art security for Android, IOS, Web, Linux", 15.0),
                    SizedBox(
                      height: 15.0,
                    ),
                    Wrap(
                      spacing: 7.0,
                      runSpacing: 7.0,
                      children: [
                        tealContainer("Flutter"),
                        tealContainer("Firebase"),
                        tealContainer("IOS"),
                        tealContainer("windows"),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              //Web development,Starting Second Section
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimatedCard(
                    imagePath: "assets/web_dev_img.png",
                    width: 200.0,
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  SansBold("Web development", 20.0),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
              Sans(
                  "I'm here to build your presence online with state of the art web apps",
                  15.0),
              //App development, tird section
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  AnimatedCard(
                    imagePath: "assets/app.png",
                    reverse: true,
                    width: 200.0,
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  SansBold("App development", 20.0),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
              Sans(
                  "Do you need a high-performance, responsive and beautiful app? Don't worry, I've got you covered.",
                  15.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimatedCard(
                    imagePath: "assets/firebase.png",
                    width: 200.0,
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  SansBold("Back-end Development", 20.0),
                  SizedBox(
                    height: 10.0,
                  ),
                  Sans(
                      "Do you want your back-end to be highly scalable and secure? Lets have a conversation on how I can help you with that.",
                      15.0),
                  SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
