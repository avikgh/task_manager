import 'package:flutter/material.dart';

import '../screens/update_profile_screen.dart';
import 'cached_network_image.dart';

AppBar CustomAppBar(BuildContext context) {
  return AppBar(
    leading: GestureDetector(
      onTap: () {
        _onTapMoveToUpdateProfileScreen(context);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: CachedNetImage(
            url: 'https://cdn-icons-png.flaticon.com/512/8345/8345328.png'),
      ),
    ),
    title: GestureDetector(
      onTap: () {
        _onTapMoveToUpdateProfileScreen(context);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Avik Ghosh',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          Text(
            'avikgh77@gmail.com',
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    ),
    titleSpacing: 5,
  );
}

void _onTapMoveToUpdateProfileScreen(BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => UpdateProfileScreen()));
}