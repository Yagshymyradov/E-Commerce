import 'package:e_commerce/ui/widgets/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/one_product_bloc/one_product_bloc.dart';
import '../../bloc/product_bloc/product_bloc.dart';

class OneProduct extends StatelessWidget {
  OneProduct({Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<OneProductBloc, OneProductState>(
  builder: (context, state) {
      if(state is LoadingOneProductState){
        return Center(child: CircularProgressIndicator(),);
      }
      if(state is LoadedOneProductState){
        return SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  'http://216.250.9.29:5003/${state.oneProduct.product.oneProduct.images[0].image}',
                  height: 265,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(state.oneProduct.product.oneProduct.nameTm),
                      const SizedBox(height: 10,),
                      Text(state.oneProduct.product.oneProduct.price.toString()),
                      const SizedBox(height: 10,),
                      Text(state.oneProduct.product.oneProduct.bodyTm),
                      const SizedBox(height: 20,),
                      const Text('Recommendation'),
                      const SizedBox(height: 20,),
                      GridView.builder(
                          shrinkWrap: true,
                          physics: const ScrollPhysics(),
                          itemCount: state.oneProduct.product.recommenendations.length,
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20,
                              childAspectRatio: 0.8
                          ),
                          itemBuilder: (_, index)=> InkWell(
                            onTap: (){
                              context.read<OneProductBloc>().add(ProductIdEvent(
                                  state.oneProduct.product.recommenendations[index].productId
                              ));
                              Navigator.push(context, MaterialPageRoute(builder: (_)=> OneProduct()));
                            },
                            child: Product(
                              image: 'http://216.250.9.29:5003/${state.oneProduct.product.recommenendations[index].images[0].image}',
                              productName: state.oneProduct.product.recommenendations[index].nameTm,
                              price: state.oneProduct.product.recommenendations[index].price.toString(),
                            ),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      }
      return Container();
  },
),
    );
  }
}











