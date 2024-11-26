import 'package:bloc/bloc.dart';
import 'package:block_samble/controllers/api/product_api.dart';
import 'package:block_samble/models/product_model.dart';
import 'package:meta/meta.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ApiService apiService;

  ProductBloc({required this.apiService}) : super(ProductInitial()) {
    on<FetchProducts>(_onFetchProduct);
  }

  void _onFetchProduct(FetchProducts event,Emitter<ProductState>emit)async{
    emit(ProductLoading());

    try{
      final products=await apiService.fetchProducts();
      emit(ProductLoaded(products: products));
    }catch(error){
      emit(ProductError(errorMessage: error.toString()));
    }
  }
}
