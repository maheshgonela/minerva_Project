import 'package:barcode_scan2/platform_wrapper.dart';
import 'package:base_auth/base_auth.dart';
import 'package:flutter/material.dart';
import 'package:minerva/design/colors.dart';
import 'package:widgets/widgets.dart';

class AddInventoryScreen extends StatefulWidget {
  const AddInventoryScreen({super.key});

  @override
  _AddInventoryScreenState createState() => _AddInventoryScreenState();
}

class _AddInventoryScreenState extends State<AddInventoryScreen> {
  TextEditingController scannedCodeController = TextEditingController();
  TextEditingController weightCodeController = TextEditingController();
  FocusNode? focusNode;

  LoggedInUser? user;

  @override
  void initState() {
    super.initState();
    scannedCodeController.text = '';
    focusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: GoBackIcon(
          icon:
              const Icon(Icons.arrow_back_ios, color: AppColors.secondaryColor),
        ),
        title: Text(
          'Add Inventory',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: AppColors.secondaryColor,
              ),
        ),
        actions: [
          IconButton(
              icon: const Icon(
                Icons.home,
                color: AppColors.secondaryColor,
              ),
              onPressed: () {})
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0, right: 8, left: 8),
            child: Text('Scan Product',
                style: Theme.of(context).textTheme.titleLarge),
          ),
          const SizedBox(height: 8),
          _buildBarCodeTextField(context),
          const SizedBox(height: 12),
          Expanded(
            child: Card(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                topLeft: Radius.circular(54),
                bottomRight: Radius.circular(54),
              )),
              color: AppColors.appBarBgColor,
              child: Padding(
                padding: const EdgeInsets.only(top: 24.0, right: 8, left: 24),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Products',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24)),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              children: [
                                Text(
                                  'Rasmalai',
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                                const Spacer(),
                                Text(
                                  'KG',
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                                const SizedBox(width: 24),
                                Text(
                                  '65',
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: 360,
                      left: 280,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24)),
                        ),
                        child: Text(
                          'Done',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildBarCodeTextField(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, right: 8, left: 8),
      child: Theme(
          data: ThemeData(
            primaryColor: AppColors.secondaryColor,
          ),
          child: TextField(
            // autofocus: true,
            // focusNode: focusNode,
            controller: scannedCodeController,
            onSubmitted: (val) {},
            decoration: InputDecoration(
              fillColor: AppColors.appBarBgColor,
              filled: true,
              labelText: "Scan Product",
              // enabledBorder: const OutlineInputBorder(
              //   borderSide: const BorderSide(color: Colors.grey, width: 0.0),
              // ),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(33)),
              suffixIcon: IconButton(
                icon: const Icon(
                  Icons.qr_code,
                ),
                onPressed: () async {
                  final scanresult = await BarcodeScanner.scan();
                  if (scanresult.rawContent.isNotEmpty) {
                    scannedCodeController.text = scanresult.rawContent;
                  }
                },
              ),
            ),
          )),
    );
  }
}
