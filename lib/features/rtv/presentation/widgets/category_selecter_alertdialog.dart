import 'package:base_auth/entity/id_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minerva/features/rtv/presentation/bloc/fetch_product/fetch_product_bloc.dart';
import 'package:minerva/features/rtv/presentation/bloc/fetch_product_category/fetch_product_category_bloc.dart';
import 'package:minerva/loading_indicator.dart';
import 'package:widgets/widgets.dart';

class CategorySelecter extends StatefulWidget {
  const CategorySelecter({
    super.key,
    required this.fetchProductBlocContext,
  });

  final BuildContext fetchProductBlocContext;

  @override
  State<CategorySelecter> createState() => _CategorySelecterState();
}

class _CategorySelecterState extends State<CategorySelecter> {
  List<String> selectedCategoryList = [];
  List<String> totalCategoryList = [];
  copytototalCatoList(List<IdName> productCategorys) {
    totalCategoryList = productCategorys.map((e) => e.id).toList();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      contentPadding: const EdgeInsets.all(12.0),
      insetPadding: const EdgeInsets.symmetric(horizontal: 18),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Select category',
                style: GoogleFonts.istokWeb(
                    textStyle: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontWeight: FontWeight.bold)),
              ),
              IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(
                    Icons.close_rounded,
                  ))
            ],
          ),
          const Divider(),
          BlocBuilder<FetchProductCategoryBloc, FetchProductCategoryState>(
            builder: (context, state) {
              print(state);
              return state.when(
                initial: () => const LoadingIndicator(),
                loading: () => const LoadingIndicator(),
                success: (productCategorys, hasReachedMax, __) {
                  copytototalCatoList(productCategorys);
                  return Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            '${selectedCategoryList.length} total items',
                            style: GoogleFonts.istokWeb(
                                textStyle: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14)),
                          ),
                        ),
                        Wrap(
                          spacing: 3,
                          children: productCategorys.map((e) {
                            bool isSelected =
                                selectedCategoryList.contains(e.id);

                            return ActionChip(
                              padding: const EdgeInsets.all(3),
                              labelPadding: const EdgeInsets.all(2),
                              label: Text(
                                e.name,
                                style: GoogleFonts.istokWeb(
                                  textStyle: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        color: isSelected
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                ),
                              ),
                              backgroundColor: isSelected
                                  ? const Color.fromRGBO(87, 68, 25, 1)
                                  : const Color.fromRGBO(255, 218, 214, 1),
                              onPressed: () {
                                if (isSelected) {
                                  selectedCategoryList.remove(e.id);
                                } else {
                                  selectedCategoryList.add(e.id);
                                }
                                setState(() {});
                              },
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  );
                },
                failure: (f) => AppErrorWidget(
                  error: f.error,
                  onRefresh: () => _refresh(),
                ),
              );
            },
          ),
        ],
      ),
      actions: [
        Center(
          child: SizedBox(
            width: 260,
            height: 46.0,
            child: Card(
              color: const Color.fromARGB(243, 255, 255, 255),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              elevation: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {
                        selectedCategoryList.clear();
                        selectedCategoryList.addAll(totalCategoryList);
                        print(selectedCategoryList);
                        setState(() {});
                      },
                      child: const Text("All")),
                  TextButton(
                      onPressed: () {
                        selectedCategoryList.clear();
                        print(selectedCategoryList);
                        setState(() {});
                      },
                      child: const Text("Reset")),
                  ElevatedButton(
                      onPressed: () {
                        applyfun(selectedCategoryList,
                            widget.fetchProductBlocContext);
                      },
                      child: const Text("Apply")),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  void _refresh() {
    BlocProvider.of<FetchProductCategoryBloc>(context)
        .add(const FetchProductCategoryEvent.fetchInitialProductCategory());
  }
}

void applyfun(List<String> selectedCategoryList, BuildContext context) {
  String forSorting = selectedCategoryList.join(", ");
  print('forSorting: $forSorting');

  // Debug print to check if the context is valid
  print('Context: $context');

  BlocProvider.of<FetchProductBloc>(context).add(
    FetchProductEvent.fetchInitialProduct(
      selectedCategorysquery: forSorting,
    ),
  );
}
