import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:skill_connect_app/views/profile_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "GalanoGrotesque",
        useMaterial3: false,
        
      ),
      home:const ProfileView()// const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

