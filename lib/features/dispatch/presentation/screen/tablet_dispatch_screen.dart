import 'package:flutter/material.dart';
import 'package:minerva/features/dispatch/presentation/screen/tablet_shop_orders.dart';
import 'package:minerva/features/dispatch/presentation/screen/tablet_shops_list.dart';

class TabletDispatchScreen extends StatelessWidget {
  final String section;
  const TabletDispatchScreen({Key? key, required this.section}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text('Dispatch $section'),
        elevation: 0,
      ),
      body: SafeArea(
        child: Row(
          children: [
            Expanded(flex: 2, child: TabletShopsList(section: section)),
            Expanded(flex: 4, child: TabletShopOrders(section: section))
          ],
        ),
      ),
    );
  }
}
