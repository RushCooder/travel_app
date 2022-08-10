import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 15,
        backgroundColor: Colors.grey.withOpacity(0.3),
        child: Icon(
          Icons.menu,
          color: Colors.black87,
        ),
      ),
      title: Text(
        'Home',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: CircleAvatar(
        radius: 25,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset(
            'images/profile.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
