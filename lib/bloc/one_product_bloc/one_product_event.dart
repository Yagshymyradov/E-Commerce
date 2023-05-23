part of 'one_product_bloc.dart';

@immutable
abstract class OneProductEvent extends Equatable{}
class LoadedOneProductEvent extends OneProductEvent{
  @override
  List<Object?> get props => [];
}
class ProductIdEvent extends OneProductEvent{
  final String id;

  ProductIdEvent(this.id);
  @override
  List<Object?> get props => [id];
}