import 'package:flutter/material.dart';

class MyGridViewItem extends StatelessWidget {
  final double? height;
  final double? width;
  final String? image;
  final double? imageHeight;
  final String? price;
  final String? name;

  const MyGridViewItem({
    super.key,
    this.height,
    this.width,
    this.image,
    this.price,
    this.name,
    this.imageHeight,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: ColoredBox(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SizedBox(
            width: width,
            height: height,
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: imageHeight,
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.network(
                          image.toString(),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Text(
                      '\$$price',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      name.toString(),
                      style: const TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                const Positioned(
                    right: 3,
                    bottom: 25,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 25,
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 20,
                        child: Center(
                          child: Icon(
                            Icons.shopping_bag_outlined,
                            color: Colors.white70,
                          ),
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
