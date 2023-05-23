// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:untitled2/bloc/navigation_bloc/navigation_bloc.dart';
//
// class BottomNavigation extends StatelessWidget {
//   const BottomNavigation({Key? key}) : super(key: key);
//   final int index = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<NavigationBloc, NavigationState>(
//       builder: (context, state) {
//         return Scaffold(
//           bottomNavigationBar: BottomNavigationBar(
//             onTap: (value){
//               print('clicked');
//               context.read<NavigationBloc>().add(OnClickNavIndex(index: value));
//             },
//             currentIndex: 0,
//             items: const [
//               BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//               BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//               BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//               BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home')
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
