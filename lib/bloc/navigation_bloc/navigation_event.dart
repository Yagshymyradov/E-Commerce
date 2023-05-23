part of 'navigation_bloc.dart';

@immutable
abstract class NavigationEvent extends Equatable{}
class NavToEvent extends NavigationEvent{
  final int select;
  NavToEvent(this.select);
  @override
  List<Object?> get props => [select];
}