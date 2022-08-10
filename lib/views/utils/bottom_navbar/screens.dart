import 'package:flutter/cupertino.dart';
import 'package:travel_app/views/screens/home_screen/home_screen.dart';
import 'package:travel_app/views/screens/notificaiton_screen/notification_screen.dart';
import 'package:travel_app/views/screens/profile_screen/profile_screen.dart';

List<Widget> screens() {
  return const [
    HomeScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];
}
