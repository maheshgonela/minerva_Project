import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minerva/design/colors.dart';
import 'package:minerva/features/rtv/presentation/bloc/blocs.dart';
import 'package:minerva/features/rtv/presentation/bloc/fetch_product_category/fetch_product_category_bloc.dart';
import 'package:minerva/features/rtv/presentation/widgets/new_shipment_form.dart';
import 'package:minerva/get_it/injection.dart';
import 'package:minerva/loading_indicator.dart';
import 'package:widgets/widgets.dart';

class ShipmentListScreen extends StatelessWidget {
  const ShipmentListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: GoBackIcon(icon: const Icon(Icons.arrow_back_ios)),
        title: Text(
          'GRN\'s',
          style: GoogleFonts.istokWeb(
              textStyle: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.bold)),
        ),
        iconTheme: const IconThemeData(
          size: 30,
        ),
      ),
      body: BlocBuilder<FetchShipmentBloc, FetchShipmentState>(
        builder: (ctx, state) {
          return state.when(
            initial: () => const LoadingIndicator(),
            loading: () => const LoadingIndicator(),
            success: (l, _, __) {
              if (l.isEmpty) {
                return EmptyListWidget(
                  title: 'No shipments found today',
                  onRefresh: () {
                    _refresh(context);
                  },
                );
              }

              return RefreshIndicator(
                onRefresh: () {
                  _refresh(context);
                  return Future.delayed(const Duration(seconds: 1));
                },
                child: ListView.builder(
                  itemCount: l.length,
                  itemBuilder: (ctx, idx) {
                    return Card(
                      elevation: 8.0,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 6.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: ListTile(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          leading: Container(
                            padding: const EdgeInsets.only(right: 12.0),
                            decoration: const BoxDecoration(
                              border: Border(
                                  right: BorderSide(
                                      width: 1.3, color: Colors.white)),
                            ),
                            child: CircleAvatar(
                              radius: 23,
                              child: Text(l[idx].bpName.characters.first,
                                  style: const TextStyle(fontSize: 28)),
                            ),
                          ),
                          title: Text(
                            l[idx].documentNo,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(l[idx].partnerAddress,
                              style: const TextStyle()),
                          trailing: Text(l[idx].movementDate),
                        ),
                      ),
                    );
                  },
                ),
              );
            },
            failure: (f) {
              return AppErrorWidget(
                error: f.error,
                onRefresh: () {
                  _refresh(context);
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
            return MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (ctx) => sl.get<FetchBusinessPartnerBloc>()
                    ..add(const FetchBusinessPartnerEvent
                        .fetchInitialBusinessPartner()),
                ),
                BlocProvider(
                  create: (ctx) => sl.get<FetchProductBloc>(),
                ),
                BlocProvider(
                  create: (ctx) => sl.get<FetchProductCategoryBloc>()
                    ..add(const FetchProductCategoryEvent
                        .fetchInitialProductCategory()),
                ),
                BlocProvider(create: (ctx) => sl.get<NewShipmentBloc>()),
              ],
              child: const NewShipmentForm(),
            );
          })).then((value) {
            if (value == true) {
              _refresh(context);
            }
          });
        },
        icon: const Icon(Icons.add),
        label: const Text(' Create GRN '),
      ),
    );
  }

  void _refresh(BuildContext context) {
    BlocProvider.of<FetchShipmentBloc>(context)
        .add(const FetchShipmentEvent.fetchInitialShipment());
  }
}






            // ListTile(
            //               leading: CircleAvatar(
            //                 backgroundColor:
            //                     Theme.of(context).primaryColorLight,
            //                 child: Text(l[idx].bpName.characters.first),
            //               ),
            //               title: Text(l[idx].documentNo),
            //               subtitle: Text(l[idx].partnerAddress),
            //               trailing: Text(l[idx].movementDate),
            //             ),