import 'package:block_samble/view/login_page/login_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () async {
            final pref = await SharedPreferences.getInstance();
            await pref.setBool('isLoggedInkey', false);
            Navigator.pushAndRemoveUntil(
              // ignore: use_build_context_synchronously
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
              (Route<dynamic> route) => false, // Remove all previous routes
            );
          },
          child: Text('Log Out')),
    );
  }
}
