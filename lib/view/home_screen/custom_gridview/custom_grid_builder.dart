import 'package:block_samble/controllers/blocs/product_bloc/product_bloc.dart';
import 'package:block_samble/models/product_model.dart';
import 'package:block_samble/view/home_screen/custom_gridview/custom_gridview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyCustomGridBuilder extends StatelessWidget {
  const MyCustomGridBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        if (state is ProductInitial) {
          return Center(
              child: CircularProgressIndicator(
            color: Colors.green,
          ));
        } else if (state is ProductLoading) {
          return Center(
              child: CircularProgressIndicator(
            color: Colors.green,
          ));
        } else if (state is ProductLoaded) {
          return ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: (state.products.length / 4).ceil(),
            itemBuilder: (context, index) {
              // Calculate indices for the current group of 4 items
              int baseIndex = index * 4;
              ProductModel? data1 = baseIndex < state.products.length
                  ? state.products[baseIndex]
                  : null;
              ProductModel? data2 = (baseIndex + 1) < state.products.length
                  ? state.products[baseIndex + 1]
                  : null;
              ProductModel? data3 = (baseIndex + 2) < state.products.length
                  ? state.products[baseIndex + 2]
                  : null;
              ProductModel? data4 = (baseIndex + 3) < state.products.length
                  ? state.products[baseIndex + 3]
                  : null;

              return CustomGridview(
                  data1: data1, data2: data2, data3: data3, data4: data4);
            },
          );
        } 
        else if (state is ProductError) {
          return Center(
            child: Text(state.errorMessage),
          );
        }
         else {
          return Container();
        }
      },
    );
  }
}
