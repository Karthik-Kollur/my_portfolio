import 'package:flutter/material.dart';
import 'package:portfolio_project/routes.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart'
    show
        kIsWeb; //klsWeb is a variable which return true if the app is running on the web

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy(); //it configures the web app to use a path-based URL strategy
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBjFRErzJogOz3FSWGKRHHY7hvneYn9tYE",
            authDomain: "karthik-portfolio-5ab28.firebaseapp.com",
            projectId: "karthik-portfolio-5ab28",
            storageBucket: "karthik-portfolio-5ab28.appspot.com",
            messagingSenderId: "362607609887",
            appId: "1:362607609887:web:34c4e37ad74e9d66b76d2a",
            measurementId: "G-0P0XXW5HNM"));
  } else {
    await Firebase.initializeApp(); //it will execute if its running in mobile
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) => Routes.generateRoute(settings),
      initialRoute: '/',
    );
  }
}
