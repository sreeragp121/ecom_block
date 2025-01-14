part of 'product_bloc.dart';

@immutable
sealed class ProductState {}

final class ProductInitial extends ProductState {}

class ProductLoading extends ProductState{}

class ProductLoaded extends ProductState{
  final List<ProductModel>products;

  ProductLoaded({required this.products});

}

class ProductError extends ProductState{
 final String errorMessage;

  ProductError({required this.errorMessage});
}


