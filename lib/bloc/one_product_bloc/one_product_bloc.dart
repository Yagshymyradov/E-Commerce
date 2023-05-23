import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../models/get_informations.dart';
import '../../models/one_product_model.dart';

part 'one_product_event.dart';
part 'one_product_state.dart';

class OneProductBloc extends Bloc<OneProductEvent, OneProductState> {
  final GetInformations _getInformations;
  OneProductBloc(this._getInformations) : super(LoadingOneProductState()) {
    on<ProductIdEvent>((event, emit) async{
      emit(LoadingOneProductState());
      try{
        final productOne = await _getInformations.getOne(event.id);
        emit(LoadedOneProductState(oneProduct: productOne));
      }catch(e){
        emit(ErrorOneProductState(e.toString()));
      }
    });
  }
}
