import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/one_product_bloc/one_product_bloc.dart';
import '../../bloc/product_bloc/product_bloc.dart';
import '../widgets/one_product.dart';
import '../widgets/product.dart';
import '../widgets/search.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Search(),
              BlocBuilder<ProductBloc, ProductState>(
                builder: (context, state) {
                  if (state is LoadingState) {
                    return const CircularProgressIndicator();
                  }
                  if (state is LoadedState) {
                    return Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: Text('Sale products'),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 3,
                          width: MediaQuery.of(context).size.height,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            physics: const ScrollPhysics(),
                            shrinkWrap: true,
                            itemCount:state.topProduct.rows.length,
                            itemBuilder: (_, index) => Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: InkWell(
                                onTap:(){
                                  context.read<OneProductBloc>().add(ProductIdEvent(
                                      state.topProduct.rows[index].productId
                                  ));
                                  Navigator.push(context, MaterialPageRoute(builder: (_)=>OneProduct()));
                                },
                                child: Product(
                                  image:
                                  'http://216.250.9.29:5003/${state.topProduct.rows[index].images[0].image}',
                                  productName: state.topProduct.rows[index].nameTm,
                                  price: 22.toString(),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: Text('New products'),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 3,
                          width: MediaQuery.of(context).size.height,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            physics: const ScrollPhysics(),
                            shrinkWrap: true,
                            itemCount:
                                state.saleProduct.actionProducts.rows.length,
                            itemBuilder: (_, index) => Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: InkWell(
                                onTap: (){
                                  context.read<OneProductBloc>().add(ProductIdEvent(
                                    state.saleProduct.actionProducts.rows[index].productId
                                  ));
                                  Navigator.push(context, MaterialPageRoute(builder: (_)=> OneProduct()));
                                },
                                child: Product(
                                  image:
                                      'http://216.250.9.29:5003/${state.saleProduct.actionProducts.rows[index].images[0].image}',
                                  productName: state.saleProduct.actionProducts
                                      .rows[index].nameTm,
                                  price: 22
                                      .toString(),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: Text('Top products'),
                        ),
                        GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 20,
                                  crossAxisSpacing: 20,
                                childAspectRatio: 0.6
                              ),
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: state.newProduct.newProducts.length,
                          itemBuilder: (_, index) => InkWell(
                            onTap: (){
                              context.read<OneProductBloc>().add(ProductIdEvent(
                                  state.newProduct.newProducts[index].productId
                              ));
                              Navigator.push(context, MaterialPageRoute(builder: (_)=> OneProduct()));
                            },
                            child: Product(
                              image:
                                  'http://216.250.9.29:5003/${state.newProduct.newProducts[index].images[0].image}',
                              productName: state.newProduct.newProducts[index].nameTm,
                              price: 22
                                  .toString(),
                            ),
                          ),
                        ),
                      ],
                    );
                  }
                  if (state is ErrorState) {
                    return const Center(child: Text('Error'));
                  }
                  return Container();
                },
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
