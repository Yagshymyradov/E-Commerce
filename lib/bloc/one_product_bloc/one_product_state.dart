part of 'one_product_bloc.dart';

@immutable
abstract class OneProductState extends Equatable{}

class LoadingOneProductState extends OneProductState {
  @override
  List<Object?> get props => [];
}

class LoadedOneProductState extends OneProductState {
  final JsonOneProduct oneProduct;
  LoadedOneProductState({
    required this.oneProduct,
  });

  @override
  List<Object?> get props => [];
}
class ErrorOneProductState extends OneProductState {
  final String error;
  ErrorOneProductState(this.error);

  @override
  List<Object?> get props => [];
}