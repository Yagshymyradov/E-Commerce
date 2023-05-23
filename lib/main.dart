import 'package:e_commerce/ui/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/navigation_bloc/navigation_bloc.dart';
import 'bloc/one_product_bloc/one_product_bloc.dart';
import 'bloc/product_bloc/product_bloc.dart';
import 'models/get_informations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create : (context) => ProductBloc(GetInformations())..add(LoadedEvent()),
        ),
        BlocProvider(
          create : (context) => OneProductBloc(GetInformations()),
        ),
        BlocProvider(
          create : (context) => NavigationBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Pages(),
      ),
    );
  }
}
