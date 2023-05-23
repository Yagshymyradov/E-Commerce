import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/navigation_bloc/navigation_bloc.dart';
import 'home_page.dart';
import 'products.dart';

class Pages extends StatelessWidget {
  Pages({Key? key}) : super(key: key);
  final List pages = [
    const HomePage(),
    const Products(),
    const Center(child: Text('Text'),),
    const Center(child: Text('Text'),),
  ];


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: (context, state) {
        return Scaffold(
          body: pages[state.index],
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: state.index,
            onTap:(val){
              context.read<NavigationBloc>().add(NavToEvent(val));
            },
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.blueGrey,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Category'),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home')
            ],
          ),
        );
      },
    );
  }
}
