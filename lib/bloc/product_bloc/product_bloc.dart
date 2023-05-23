

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../models/get_informations.dart';
import '../../models/new_products_model.dart';
import '../../models/sales_products_model.dart';
import '../../models/top_products_model.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final GetInformations _getInformations;
  ProductBloc(this._getInformations) : super(LoadingState()) {
    on<LoadedEvent>((event, emit) async{
      emit(LoadingState());
      try{
        final productsTop = await _getInformations.getTop();
        final productsSale = await _getInformations.getSale();
        final productNew = await _getInformations.getNew();
        final product = await _getInformations.getProduct();
        emit(LoadedState(
          topProduct: productsTop,
          saleProduct: productsSale,
          newProduct: productNew,
          products: product
        ));
      }catch(e){
        emit(ErrorState(e.toString()));
      }
    });
  }


}
