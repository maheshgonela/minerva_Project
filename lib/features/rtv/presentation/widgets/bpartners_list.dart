import 'package:base_auth/base_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minerva/features/rtv/presentation/bloc/blocs.dart';
import 'package:minerva/loading_indicator.dart';
import 'package:widgets/widgets.dart';

class BPartnersList extends StatelessWidget {
  final String? initalValue;
  final Function(IdName bp, bool isSelected) onSelected;
  const BPartnersList({super.key, this.initalValue, required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchBusinessPartnerBloc, FetchBusinessPartnerState>(
      builder: (context, state) {
        return state.when(
          initial: () => const LoadingIndicator(),
          loading: () => const LoadingIndicator(),
          failure: (f) => AppErrorWidget(
            error: f.error,
            onRefresh: () {
              BlocProvider.of<FetchBusinessPartnerBloc>(context).add(
                  const FetchBusinessPartnerEvent
                      .fetchInitialBusinessPartner());
            },
          ),
          success: (bps, hasReachedMax, query) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text(
                          'Business Partners',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(fontWeight: FontWeight.w800),
                        ),
                      ),
                      IconButton(
                          onPressed: () => Navigator.of(context).pop(),
                          icon: const Icon(
                            Icons.close_rounded,
                            size: 32,
                          ))
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: bps.length,
                    itemBuilder: (BuildContext context, int index) {
                      final bp = bps[index];
                      return Card(
                        elevation: 3.0,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 4.0),
                        child: ListTile(
                          contentPadding: const EdgeInsets.all(2),
                          leading: Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: CircleAvatar(
                              radius: 22,
                              child: Text(
                                bp.name.characters.first,
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              ),
                            ),
                          ),
                          trailing: initalValue == bp.name
                              ? const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child:
                                      Icon(Icons.check_circle_outline_rounded),
                                )
                              : const SizedBox(),
                          title: Text(
                            bp.name,
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          onTap: () {
                            Navigator.of(context)
                                .pop(bp); // Close the bottom sheet
                            onSelected(bp, true);
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
