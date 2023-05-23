import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/one_product_bloc/one_product_bloc.dart';
import '../../bloc/product_bloc/product_bloc.dart';
import '../widgets/one_product.dart';
import '../widgets/product.dart';
class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            if(state is LoadingState){
              return Center(child: CircularProgressIndicator());
            }
            if(state is LoadedState){
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: GridView.builder(
                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      childAspectRatio: 0.3
                  ),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: state.products.length,
                  itemBuilder: (_, index) => InkWell(
                    onTap: (){
                      context.read<OneProductBloc>().add(ProductIdEvent(
                        state.products[index]['product_id']
                      ));
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>OneProduct()));
                    },
                    child: Product(
                      image:
                      'http://216.250.9.29:5003/${state.products[index]['images'][0]['image']}',
                      productName: state.products[index]['name_tm'],
                      price: state.products[index]['price'].toString(),
                    ),
                  ),
                ),
              );
            }
            return Container();
          }
        ),
      ),
    );
  }
}
