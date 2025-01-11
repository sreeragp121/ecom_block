import 'package:block_samble/models/product_model.dart';
import 'package:block_samble/view/detail_page/detail_page.dart';
import 'package:block_samble/view/home_screen/custom_gridview/custom_grid_view_card.dart';
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
              (data1 != null)
                  ? InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailPage(
                                product: data1!,
                              ),
                            ));
                      },
                      child: MyGridViewItem(
                        width: 140,
                        height: 250,
                        imageHeight: 200,
                        image: data1!.image,
                        price: '',
                        name: 'Tagerian Shirt',
                        product: data1!,
                      ),
                    )
                  : Container(),
              (data2 != null)
                  ? InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailPage(
                                product: data1!,
                              ),
                            ));
                      },
                      child: MyGridViewItem(
                        width: 140,
                        height: 190,
                        imageHeight: 140,
                        image: data2!.image,
                        price: '250.60',
                        name: 'Tagerian Shirt',
                        product: data2!,
                      ),
                    )
                  : Container(),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              (data3 != null)
                  ? InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailPage(
                                product: data3!,
                              ),
                            ));
                      },
                      child: MyGridViewItem(
                        width: 140,
                        height: 190,
                        imageHeight: 140,
                        image: data3!.image,
                        price: '250.60',
                        name: 'Tagerian Shirt',
                        product: data3!,
                      ),
                    )
                  : Container(),
              (data4 != null)
                  ? InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailPage(
                                product: data4!,
                              ),
                            ));
                      },
                      child: MyGridViewItem(
                        width: 140,
                        height: 250,
                        imageHeight: 200,
                        image: data4!.image,
                        price: '250.60',
                        name: 'Tagerian Shirt',
                        product: data4!,
                      ),
                    )
                  : Container(),
            ],
          )
        ],
      ),
    );
  }
}
