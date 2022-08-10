import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel_app/views/utils/bottom_navbar/bottom_navbar.dart';

class TravelApp extends StatelessWidget {
  const TravelApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavbar(),
      // initialRoute: HomePage.routeName,
      // routes: {
      //   HomePage.routeName : (context) => const HomePage(),
      // },
    );
  }
}
