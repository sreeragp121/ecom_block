import 'package:block_samble/models/product_model.dart';
import 'package:flutter/material.dart';

class CustomGridview extends StatelessWidget {
  final ProductModel? data1;
  final ProductModel? data2;
  final ProductModel? data3;
  final ProductModel? data4;
  const CustomGridview({
    super.key,
    required this.data1,
    required this.data2,
    required this.data3,
    required this.data4,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 520,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
             (data1!=null)? MyGridViewItem(
                width: 130,
                height: 250,
                imageHeight: 200,
                image: data1!.image,
                price: '',
                name: 'Tagerian Shirt',
              ):Container(),
              (data2!=null)?MyGridViewItem(
                width: 130,
                height: 190,
                imageHeight: 140,
                image: data2!.image,
                price: '250.60',
                name: 'Tagerian Shirt',
              ):Container(),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              (data3!=null)?MyGridViewItem(
                width: 130,
                height: 190,
                imageHeight: 140,
                image: data3!.image,
                price: '250.60',
                name: 'Tagerian Shirt',
              ):Container(),
             (data4!=null)? MyGridViewItem(
                width: 130,
                height: 250,
                imageHeight: 200,
                image: data4!.image,
                price: '250.60',
                name: 'Tagerian Shirt',
              ):Container(),
            ],
          )
        ],
      ),
    );
  }
}

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
    return Card(
      child: ColoredBox(
        color:Colors.white,
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
                    right: 30,
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
