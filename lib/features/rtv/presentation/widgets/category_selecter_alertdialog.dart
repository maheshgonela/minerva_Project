import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minerva/features/rtv/presentation/bloc/fetch_product_category/fetch_product_category_bloc.dart';
import 'package:minerva/loading_indicator.dart';
import 'package:widgets/widgets.dart';

class CategorySelecter extends StatefulWidget {
  const CategorySelecter({
    super.key,
    required this.testcatogres,
  });

  final List<String> testcatogres;

  @override
  State<CategorySelecter> createState() => _CategorySelecterState();
}

class _CategorySelecterState extends State<CategorySelecter> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      contentPadding: EdgeInsets.all(12.0),
      insetPadding: EdgeInsets.symmetric(horizontal: 18),
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
                success: (productCategorys, hasReachedMax, __) => Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Text(
                          '${productCategorys.length} total items',
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
                        children: [
                          ...productCategorys
                              .map((e) => ActionChip(
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
                                                  fontSize: 12)),
                                    ),
                                    onPressed: () {},
                                  ))
                              .toList()
                        ],
                      ),
                    ],
                  ),
                ),
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
            height: 50.0,
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
                  TextButton(onPressed: () {}, child: const Text("All")),
                  TextButton(onPressed: () {}, child: const Text("Reset")),
                  ElevatedButton(onPressed: () {}, child: const Text("Apply")),
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
