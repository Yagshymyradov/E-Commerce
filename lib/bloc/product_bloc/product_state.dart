part of 'product_bloc.dart';

abstract class ProductState extends Equatable{}

class LoadingState extends ProductState {
  @override
  List<Object?> get props => [];
}

class LoadedState extends ProductState {
  final ModelsTop topProduct;
  final ModelsSale saleProduct;
  final ModelsNew newProduct;
  final List products;
  LoadedState({
    required this.newProduct,
    required this.saleProduct,
    required this.topProduct,
    required this.products
  });

  @override
  List<Object?> get props => [];
}

class ErrorState extends ProductState {
  final String error;
  ErrorState(this.error);

  @override
  List<Object?> get props => [];
}