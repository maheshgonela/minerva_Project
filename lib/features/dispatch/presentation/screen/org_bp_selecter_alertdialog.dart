import 'package:base_auth/entity/id_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minerva/features/dispatch/presentation/bloc/fetch_organizations/fetch_organization_bloc.dart';
import 'package:minerva/features/dispatch/presentation/bloc/fetch_shops/fetch_shop_bloc.dart';
import 'package:minerva/features/product_selection/presentation/bloc/fetch_bps/fetch_bps_bloc.dart';
import 'package:widgets/loading_indicator.dart';
import 'package:widgets/widgets.dart';

class OrgBpSelecterAlertDialog extends StatefulWidget {
  const OrgBpSelecterAlertDialog({
    super.key,
  });

  @override
  State<OrgBpSelecterAlertDialog> createState() =>
      _OrgBpSelecterAlertDialogState();
}

class _OrgBpSelecterAlertDialogState extends State<OrgBpSelecterAlertDialog> {
  // List<IdName> fetchOrganizations() {
  //   final curState = BlocProvider.of<FetchOrganizationBloc>(context).state;
  //   final organizations = curState.maybeWhen(
  //     orElse: () => <IdName>[],
  //     success: (organizations, hasReachedMax, query) =>
  //         organizations,
  //   );
  //   return organizations;
  // }
  ScrollController? _scrollController;
  String? _query;
  String? _selectedorganization;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController?.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController!.offset >=
            _scrollController!.position.maxScrollExtent &&
        !_scrollController!.position.outOfRange) {
      BlocProvider.of<FetchOrganizationBloc>(context)
          .add(FetchOrganizationEvent.fetchMoreOrganization(query: _query));
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      contentPadding: const EdgeInsets.all(12.0),
      insetPadding: const EdgeInsets.symmetric(horizontal: 18),
      content: SizedBox(
        width: 300,
        height: 310,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Select organization",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const Divider(),
            _selectedorganization != null
                ? Expanded(
                    child: BlocBuilder<FetchOrganizationBloc,
                        FetchOrganizationState>(
                      builder: (context, state) {
                        return state.when(
                          initial: () => LoadingIndicator(),
                          loading: () => LoadingIndicator(),
                          success: (organizations, hasReachedMax, __) {
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Text(
                                    '${organizations.length} Organizations',
                                    style: GoogleFonts.istokWeb(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .titleSmall!
                                          .copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                          ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Scrollbar(
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      controller: _scrollController,
                                      itemCount: hasReachedMax
                                          ? organizations.length
                                          : organizations.length + 1,
                                      itemBuilder: (context, index) {
                                        final organization =
                                            organizations[index];
                                        return Card(
                                          child: SizedBox(
                                            height: 40,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                  side: const BorderSide(
                                                      width: 1),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                              onPressed: () {
                                                setState(() {
                                                  _selectedorganization =
                                                      organization.name;
                                                });
                                              },
                                              child: Text(organization.name,
                                                  style: const TextStyle(
                                                      fontSize: 16.0,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                          failure: (f) => AppErrorWidget(
                            error: f.error,
                            onRefresh: () => _refresh(),
                          ),
                        );
                      },
                    ),
                  )
                : Expanded(
                    child: BlocBuilder<FetchShopBloc, FetchShopState>(
                      builder: (context, state) {
                        return state.when(
                          initial: () => LoadingIndicator(),
                          loading: () => LoadingIndicator(),
                          success: (businessPartners, hasReachedMax, __) {
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Text(
                                    '${businessPartners.length} Organizations',
                                    style: GoogleFonts.istokWeb(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .titleSmall!
                                          .copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                          ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Scrollbar(
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      controller: _scrollController,
                                      itemCount: hasReachedMax
                                          ? businessPartners.length
                                          : businessPartners.length + 1,
                                      itemBuilder: (context, index) {
                                        final businessPartner =
                                            businessPartners[index];
                                        return Card(
                                          child: SizedBox(
                                            height: 40,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                  side: const BorderSide(
                                                      width: 1),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                              onPressed: () {
                                                setState(() {
                                                  _selectedorganization =
                                                      businessPartner.name;
                                                });
                                              },
                                              child: Text(businessPartner.name,
                                                  style: const TextStyle(
                                                      fontSize: 16.0,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                          failure: (f) => AppErrorWidget(
                            error: f.error,
                            onRefresh: () => _refresh(),
                          ),
                        );
                      },
                    ),
                  ),
          ],
        ),
      ),
      actions: [
        Center(
          child: SizedBox(
            width: 280,
            height: 50,
            child: Card(
              color: const Color.fromARGB(243, 255, 255, 255),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              elevation: 1,
              child: _selectedorganization != null
                  ? Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 0),
                              child: Text(_selectedorganization!,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(fontWeight: FontWeight.w500)),
                            ),
                            const Icon(
                              color: Colors.grey,
                              Icons.arrow_forward_ios_rounded,
                              size: 18,
                            ),
                          ],
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: const Text("Next",
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold))),
                      ],
                    )
                  : const Center(
                      child: SizedBox(
                        child: Text("Select Organization !",
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold)),
                      ),
                    ),
            ),
          ),
        )
      ],
    );
  }

  void _refresh() {
    BlocProvider.of<FetchOrganizationBloc>(context)
        .add(const FetchOrganizationEvent.fetchInitialOrganization());
  }
}
