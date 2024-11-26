import 'package:block_samble/view/home_screen/categories.dart';
import 'package:block_samble/view/home_screen/custom_gridview/custom_grid_builder.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.qr_code,
          size: 25,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.search_rounded,
              size: 25,
            ),
          )
        ],
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: 10,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Explore',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
                Text(
                  'Best trendy collection!',
                  style: TextStyle(fontSize: 15, color: Colors.black45),
                ),
                Categories(),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: MyCustomGridBuilder(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
