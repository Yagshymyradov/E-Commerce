part of 'navigation_bloc.dart';

@immutable
abstract class NavigationState extends Equatable{
  final int index;

  NavigationState(this.index);
}

class NavToSate extends NavigationState {
  final int count;
  NavToSate(this.count): super(count);
  @override
  List<Object?> get props => [count];
}
