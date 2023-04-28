import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';
import 'package:url_launcher/url_launcher.dart';
import '../components.dart';

class LandingPageMobile extends StatefulWidget {
  const LandingPageMobile({Key? key}) : super(key: key);

  @override
  State<LandingPageMobile> createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile> {
  var logger = Logger();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  final formKey = GlobalKey<FormState>();
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
    var widthDevice = MediaQuery.of(context).size.width;
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
                  child: Image.asset(
                    "assets/Karthik Kollur-circle.png",
                    filterQuality: FilterQuality.high,
                  ),
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
        body: ListView(
          children: [
            //Intro,First Section
            CircleAvatar(
              radius: 117.0,
              backgroundColor: Colors.tealAccent,
              child: CircleAvatar(
                radius: 110.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage(
                  "assets/Karthik Kollur-circle.png",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 25.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.tealAccent,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(
                              20.0,
                            ),
                            bottomRight: Radius.circular(
                              20.0,
                            ),
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
                        child: SansBold("Hello I'm", 15.0),
                      ),
                      SansBold("Karthik Kollur", 40.0),
                      Sans("Flutter Developer", 20.0),
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Wrap(
                        direction: Axis.vertical,
                        spacing: 3.0,
                        children: [
                          Icon(Icons.email),
                          Icon(Icons.call),
                          Icon(Icons.location_pin),
                        ],
                      ),
                      SizedBox(
                        width: 40.0,
                      ),
                      Wrap(
                        direction: Axis.vertical,
                        spacing: 9.0,
                        children: [
                          Sans("karthikmadival.kollur@gmail.com", 15.0),
                          Sans("9606762961", 15.0),
                          Sans("Kollur", 15.0)
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 90.0,
            ),
            //About me Second Section
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SansBold("About me", 35.0),
                  Sans("Hello I'm Karthik I specialize in Flutter development",
                      15.0),
                  Sans("I strive to ensure astonding performance with state of",
                      15.0),
                  Sans(
                      "the art security for Android, IOS, Web, Linux and Windows",
                      15.0),
                  SizedBox(
                    height: 10.0,
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
              height: 60.0,
            ),
            //Third section of What I do?
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SansBold("What I do", 35.0),
                AnimatedCard(
                  imagePath: "assets/web_dev_img.png",
                  text: "Web Development",
                  width: 300.0,
                ),
                SizedBox(
                  height: 35.0,
                ),
                AnimatedCard(
                  imagePath: "assets/app.png",
                  text: "App Development",
                  fit: BoxFit.contain,
                  reverse: true,
                  width: 300.0,
                ),
                SizedBox(
                  height: 35.0,
                ),
                AnimatedCard(
                  imagePath: "assets/firebase.png",
                  text: "Back-end Development",
                  width: 300.0,
                ),
                SizedBox(
                  height: 60.0,
                ),
                //Fourt section Contact
                Form(
                  key: formKey,
                  child: Wrap(
                    runSpacing: 20.0,
                    spacing: 20.0,
                    alignment: WrapAlignment.center,
                    children: [
                      SansBold("Contact me", 35.0),
                      TextForm(
                          controller: _firstNameController,
                          text: "First name",
                          containerWidth: widthDevice / 1.4,
                          hintText: "Please type First name"),
                      TextForm(
                        controller: _lastNameController,
                        text: "Last name",
                        containerWidth: widthDevice / 1.4,
                        hintText: "Please type Last name",
                      ),
                      TextForm(
                        controller: _emailController,
                        text: "Email",
                        containerWidth: widthDevice / 1.4,
                        hintText: "Please type Email address",
                        validator: (text) {
                          if (text.toString().isEmpty) {
                            return "Email is required";
                          }
                        },
                      ),
                      TextForm(
                        controller: _phoneController,
                        text: "Phone number",
                        containerWidth: widthDevice / 1.4,
                        hintText: "Please type your Phone number",
                      ),
                      TextForm(
                        controller: _messageController,
                        text: "Message",
                        containerWidth: widthDevice / 1.4,
                        hintText: "Message",
                        maxLines: 10,
                        validator: (text) {
                          if (text.toString().isEmpty) {
                            return "Message is required";
                          }
                        },
                      ),
                      MaterialButton(
                        onPressed: () async {
                          logger.d(_firstNameController.text);
                          final addData = new AddDataFirestore();
                          if (formKey.currentState!.validate()) {
                            await addData.addResponse(
                                _firstNameController.text,
                                _lastNameController.text,
                                _emailController.text,
                                _phoneController.text,
                                _messageController.text);
                            formKey.currentState!
                                .reset(); //it deletes the texts from the feilds after submitting
                            DialogError(context);
                          }
                        },
                        elevation: 20.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        height: 60.0,
                        minWidth: widthDevice / 2.2,
                        color: Colors.tealAccent,
                        child: SansBold("submit", 20.0),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
