import 'package:flutter/material.dart';

class CartListview extends StatelessWidget {
  const CartListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.all(8.0),
          child: CartListviewItem(),
        );
      },
    );
  }
}

class CartListviewItem extends StatelessWidget {
  const CartListviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: double.infinity,
      child: Row(
        children: [
          SizedBox(
            width: 140,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  'assets/sample.jpg',
                  fit: BoxFit.fill,
                )),
          ),
           Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'premium\nTagerine Shirt',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                // const SizedBox(height: 20),
                const Text(
                  'Yellow',
                  style: TextStyle(color: Colors.black54),
                ),
                const Text(
                  'Size 8',
                  style: TextStyle(color: Colors.black54),
                ),
                // const SizedBox(
                //   height: 20,
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     const Text(
                      '\$257.85',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w900),
                    ),
                    const SizedBox(width: 80,),
                    InkWell(
                      onTap: () {
                        
                      },
                      child: const Text('1 X', style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w400),),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
