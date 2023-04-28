import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
import '../components.dart';

class WorksMobile extends StatefulWidget {
  const WorksMobile({Key? key}) : super(key: key);

  @override
  State<WorksMobile> createState() => _WorksMobileState();
}

class _WorksMobileState extends State<WorksMobile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
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
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsscrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 400.0,
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(
                  size: 35.0,
                  color: Colors.black,
                ),
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    "assets/works.jpg",
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ];
          },
          body: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  SansBold("Works", 35.0),
                  SizedBox(
                    height: 20.0,
                  ),
                  AnimatedCard(
                    imagePath: "assets/my_portfolio_screenshot.png",
                    height: 150.0,
                    width: 300.0,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(
                    height: 45.0,
                  ),
                  SansBold("Portfolio", 20.0),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Sans(
                    "Deployed on Android, IOS and Web, the Portfolio project was truly an acheivement . I used Flutter to Develop the beautiful and responsive UI and firebase for the back-end.",
                    15.0),
              ),
              SizedBox(
                height: 15,
              )
            ],
          ),
        ),
      ),
    );
  }
}
