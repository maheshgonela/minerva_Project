import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minerva/constants.dart';
import 'package:minerva/features/dispatch/domain/entities/shipment_ui_model.dart';
import 'package:minerva/features/dispatch/presentation/bloc/download_invoice/download_invoice_bloc.dart';
import 'package:minerva/features/dispatch/presentation/bloc/shop_trips/shop_trips_bloc.dart';
import 'package:minerva/get_it/injection.dart';
import 'package:minerva/loading_indicator.dart';
import 'package:minerva/toast_message.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:widgets/widgets.dart';

class ShopTrips extends StatefulWidget {
  const ShopTrips({
    Key? key,
    required this.section,
    required this.orderId,
    required this.shop,
    this.fromDispatchSection = true,
  }) : super(key: key);

  final String section;
  final String orderId;
  final String shop;
  final bool fromDispatchSection;

  @override
  _ShopTripsState createState() => _ShopTripsState();
}

class _ShopTripsState extends State<ShopTrips> {
  @override
  void initState() {
    super.initState();
    _refresh(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.shop),
        elevation: 0.0,
      ),
      body: BlocBuilder<ShopTripsBloc, ShopTripsState>(
        builder: (context, state) {
          return state.when(
            initial: () {
              return const Center(child: CircularProgressIndicator());
            },
            loading: () {
              return const Center(child: CircularProgressIndicator());
            },
            success: (records, hasReachedMax, query) {
              if (records.shipped.isEmpty) {
                return EmptyListWidget(
                  title: 'No trips found for ${widget.shop} today',
                  onRefresh: () {
                    _refresh(context);
                  },
                );
              }

              return DefaultTabController(
                length: records.shipped.length,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Material(
                      elevation: 2.0,
                      child: TabBar(
                        labelColor: Colors.black,
                        labelStyle: Theme.of(context).textTheme.headline6,
                        indicatorWeight: 4.0,
                        tabs: [
                          ...[
                            for (int i = 1; i <= records.shipped.length; i++)
                              Tab(
                                text: 'Trip $i',
                                icon: const Icon(Icons.check_circle),
                              )
                          ],
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          ...records.shipped.map((e) => _buildShippedLayout(e)),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
            failure: (e) {
              return AppErrorWidget(
                onRefresh: () => _refresh(context),
                error: e.error,
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildShippedLayout(ShipmentUiModel e) {
    return BlocProvider<DownloadInvoiceBloc>(
      create: (ctx) => sl.get<DownloadInvoiceBloc>(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            isThreeLine: true,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            title: Text('Driver: ${e.driver}',
                style: Theme.of(context).textTheme.headline5),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Sender: ${e.sender}',
                    style: Theme.of(context).textTheme.headline6),
                Text('Vehicle Number: ${e.vehicleNumber}',
                    style: Theme.of(context).textTheme.headline6),
                Text(e.creationDate,
                    style: Theme.of(context).textTheme.headline6)
              ],
            ),
            trailing: BlocConsumer<DownloadInvoiceBloc, DownloadInvoiceState>(
              listener: (ctx, state) {
                state.maybeWhen(
                  success: (d) async {
                    final _file = await _createFileFromString(d, e.shipmentId);
                    final open = await OpenFile.open(_file);
                    switch (open.type) {
                      case ResultType.fileNotFound:
                        toastMessage(
                            errorMessage: 'File not found', context: context);
                        break;
                      case ResultType.noAppToOpen:
                        toastMessage(
                            errorMessage: open.message, context: context);
                        break;
                      case ResultType.permissionDenied:
                        toastMessage(
                            errorMessage: 'Permission denied',
                            context: context);
                        break;
                      case ResultType.error:
                        toastMessage(
                            errorMessage: open.message, context: context);
                        break;
                      default:
                        break;
                    }
                  },
                  failure: (f) {
                    toastMessage(errorMessage: f.error, context: context);
                  },
                  orElse: () {},
                );
              },
              builder: (ctx, state) {
                return state.maybeWhen(
                  loading: () => const SizedBox(
                    width: 24,
                    height: 24,
                    child: LoadingIndicator(),
                  ),
                  orElse: () => _buildDownloadButton(e, ctx),
                );
              },
            ),
          ),
          const Divider(),
          const SizedBox(height: 8),
          const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text('PRODUCTS'),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: e.products.length,
              padding: const EdgeInsets.all(16.0),
              separatorBuilder: (ctx, idx) =>
                  const Divider(color: Colors.transparent),
              itemBuilder: (ctx, idx) {
                return ListTile(
                  tileColor: const Color(0xffeceff1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  title: Text(e.products[idx].productName,
                      style: Theme.of(context).textTheme.headline5),
                  subtitle: Row(
                    children: [
                      Chip(
                        label: Text(
                          'Ordered: ${e.products[idx].orderedQty.toStringAsFixed(3)}',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        backgroundColor: Colors.green,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Chip(
                          label: Text(
                            'Dispatched: ${e.products[idx].dispatchedQty.toStringAsFixed(3)}',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          backgroundColor: Colors.orange,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  OutlinedButton _buildDownloadButton(ShipmentUiModel e, BuildContext context) {
    return OutlinedButton.icon(
      onPressed: () {
        BlocProvider.of<DownloadInvoiceBloc>(context)
            .add(DownloadInvoiceEvent.downloadInvoice(e.shipmentId));
      },
      icon: const Icon(Icons.file_download),
      label: const Text('Download Invoice'),
    );
  }

  void _refresh(BuildContext context) {
    BlocProvider.of<ShopTripsBloc>(context).add(
      widget.section == Constants.bakerySection
          ? ShopTripsEvent.fetchBakeryProducts(widget.orderId,
              fromDispatchSection: widget.fromDispatchSection)
          : ShopTripsEvent.fetchSweetsProducts(widget.orderId,
              fromDispatchSection: widget.fromDispatchSection),
    );
  }

  Future<String> _createFileFromString(Uint8List data, String name) async {
    final String dir = (await getApplicationDocumentsDirectory()).path;
    final File file = File("${"$dir/"}$name.pdf");
    await file.writeAsBytes(data);
    return file.path;
  }
}
