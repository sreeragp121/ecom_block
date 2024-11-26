import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> items = ['All', 'Men', 'Women', 'Kids', 'Others'];
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 70,
              decoration: BoxDecoration(
                  color: Colors.orange.shade600,
                  borderRadius: BorderRadius.circular(50)),
              child: Center(
                  child: Text(
                items[index],
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white70,
                    fontWeight: FontWeight.w500),
              )),
            ),
          );
        },
      ),
    );
  }
}
