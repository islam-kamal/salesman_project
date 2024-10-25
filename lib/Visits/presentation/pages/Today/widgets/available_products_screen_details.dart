import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water/Base/Helper/app_state.dart';
import 'package:water/Base/Shimmer/loading_shimmer.dart';
import 'package:water/Base/common/shared.dart';
import 'package:water/Base/common/theme.dart';
import 'package:water/Visits/data/models/category_model.dart';
import 'package:water/Visits/presentation/bloc/products_bloc.dart';
import 'package:water/Visits/presentation/pages/Today/widgets/list_category_products.dart';
import 'package:water/Visits/presentation/pages/Today/widgets/products_and_prices_available_items_screen.dart';
import 'package:water/widgets/drawer_available_products_screen.dart';
import 'package:water/widgets/search_text_field_available_products_screen.dart';
import 'package:water/widgets/water_item_available_products.dart';

class AvailableProductsScreenDetails extends StatelessWidget {
  CategoryData? categoryData;
  AvailableProductsScreenDetails({super.key,this.categoryData});

  @override
  Widget build(BuildContext context) {

    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          drawer: const DrawerAvailableProductsScreen(),
          body: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 3,
                  child: BlocBuilder<ProductsBloc, AppState>(
                    bloc: productsBloc,
                    builder: (context, state) {
                      if (state is Loading) {
                        return const LoadingPlaceHolder(
                          shimmerType: ShimmerType.list,
                          cellShimmerHeight: 50,
                          shimmerCount: 10,
                        );
                      }
                      else if (state is GetProductsDone) {
                        if(state.products != null && state.products!.isNotEmpty){
                        return ListCategoryProducts(
                          categoryData: categoryData,
                          products: state.products,
                        );
                        }
                        else{
                          return Center(
                            child: Text("لا توجد منتجات حاليا",
                            style: TextStyle(color: kBlackColor),),
                          );
                        }

                      } else if (state is GetProductsErrorLoading) {
                        return Center(
                          child: Text("${state.message}"),
                        );
                      } else {
                        return Container();
                      }

                    },
                  )




                ),
               // const ProductsAndPricesAvailableProductsScreen()
                ProductsAndPricesAvailableItemsScreen()
              ],
            ),
          ),
        );
  }
}
