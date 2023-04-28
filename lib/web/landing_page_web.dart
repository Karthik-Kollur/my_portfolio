import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:logger/logger.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({Key? key}) : super(key: key);

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  var logger = Logger();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  final formKey = GlobalKey<FormState>();

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

  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
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
      body: ListView(children: [
        //First Page
        Container(
          height: heightDevice - 56.0, //-56 is default size of appBar
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
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    child: SansBold("Hello I'm", 15.0),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  SansBold("Karthik Kollur", 55.0),
                  Sans("Flutter Developer", 30.0),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    children: [
                      Icon(Icons.email),
                      SizedBox(
                        width: 20.0,
                      ),
                      Sans("karthikmadival.kollur@gmail.com", 15.0),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(children: [
                    Icon(Icons.call),
                    SizedBox(
                      width: 20.0,
                    ),
                    Sans("9606762961", 15.0),
                  ]),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_pin),
                      SizedBox(
                        width: 20.0,
                      ),
                      Sans("Kollur", 15.0),
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
                    backgroundColor: Colors.white,
                    backgroundImage:
                        AssetImage("assets/Karthik Kollur-circle.png"),
                  ),
                ),
              ),
            ],
          ),
        ),
        //Begining of Second Page
        Container(
          height: heightDevice / 1.5,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/about_me.jpg",
                height: widthDevice / 1.9,
                filterQuality: FilterQuality.high,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SansBold("About me", 40.0),
                  SizedBox(
                    height: 15.0,
                  ),
                  Sans("Hello I'm Karthik", 15.0),
                  Sans("I Strive to explore astonding performance", 15.0),
                  Sans(
                      "The art security for Android, IOS, Web, Mac and Windows",
                      15.0),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.tealAccent,
                                  style: BorderStyle.solid,
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(5.0)),
                          padding: EdgeInsets.all(7.0),
                          child: Sans("Flutter", 15.0)),
                      SizedBox(
                        width: 7.0,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.tealAccent,
                                  style: BorderStyle.solid,
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(5.0)),
                          padding: EdgeInsets.all(7.0),
                          child: Sans("Firebase", 15.0)),
                      SizedBox(
                        width: 7.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.tealAccent,
                                style: BorderStyle.solid,
                                width: 2.0),
                            borderRadius: BorderRadius.circular(5.0)),
                        padding: EdgeInsets.all(7.0),
                        child: Sans("Android", 15.0),
                      ),
                      SizedBox(
                        width: 7.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.tealAccent,
                                style: BorderStyle.solid,
                                width: 2.0),
                            borderRadius: BorderRadius.circular(5.0)),
                        padding: EdgeInsets.all(7.0),
                        child: Sans("IOS", 15.0),
                      ),
                      SizedBox(
                        width: 7.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.tealAccent,
                                style: BorderStyle.solid,
                                width: 2.0),
                            borderRadius: BorderRadius.circular(5.0)),
                        padding: EdgeInsets.all(7.0),
                        child: Sans("Windows", 15.0),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        //Third Section
        Container(
          height: heightDevice / 1.3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SansBold("What I Do?", 40.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AnimatedCard(
                    imagePath: "assets/web_dev_img.png",
                    text: "Web Development",
                  ),
                  AnimatedCard(
                    imagePath: "assets/app.png",
                    text: "App Development",
                    fit: BoxFit.contain,
                    reverse: true,
                  ),
                  AnimatedCard(
                    imagePath: "assets/firebase.png",
                    text: "Back-end Development",
                  ),
                ],
              )
            ],
          ),
        ),
        //fourth Section
        Container(
          height: heightDevice,
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold("Contact me", 40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        TextForm(
                          validator: (text) {
                            if (text.toString().isEmpty) {
                              return "First name is required";
                            }
                          },
                          controller: _firstNameController,
                          containerWidth: 350.0,
                          text: "Firstname",
                          hintText: "Please type your First name",
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        TextForm(
                          validator: (text) {
                            if (text.toString().isEmpty) {
                              return "Email is required";
                            }
                          },
                          controller: _emailController,
                          containerWidth: 350.0,
                          text: "Email",
                          hintText: "Please enter your Email Address",
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        TextForm(
                            // validator: (text) {
                            //   if (text.toString().isEmpty) {
                            //     return "Last name is required";
                            //   }
                            // },
                            controller: _lastNameController,
                            text: "Last name",
                            containerWidth: 350.0,
                            hintText: "Please enter your Last name"),
                        SizedBox(
                          height: 15.0,
                        ),
                        TextForm(
                            // validator: (text) {
                            //   if (text.toString().isEmpty) {
                            //     return "Phone Number is required";
                            //   }
                            // },
                            controller: _phoneController,
                            text: "Phone number",
                            containerWidth: 350.0,
                            hintText: "Please type your Phone number"),
                      ],
                    )
                  ],
                ),
                TextForm(
                  validator: (text) {
                    if (text.toString().isEmpty) {
                      return "Message is required";
                    }
                  },
                  controller: _messageController,
                  text: "Message",
                  containerWidth: widthDevice / 1.5,
                  hintText: "Please enter your message",
                  maxLines: 10,
                ),
                MaterialButton(
                  elevation: 20.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  height: 60.0,
                  minWidth: 200.0,
                  color: Colors.tealAccent,
                  child: SansBold("Submit", 20.0),
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
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20.0,
        )
      ]),
    );
  }
}
