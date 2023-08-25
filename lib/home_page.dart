import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minerva/app_drawer.dart';
import 'package:minerva/constants.dart';
import 'package:minerva/design/colors.dart';
import 'package:minerva/features/dispatch/presentation/bloc/create_dispatch/create_dispatch_cubit.dart';
import 'package:minerva/features/dispatch/presentation/bloc/fetch_shops/fetch_shop_bloc.dart';
import 'package:minerva/features/dispatch/presentation/screen/list_of_shops.dart';
import 'package:minerva/features/rtv/presentation/bloc/blocs.dart';
import 'package:minerva/features/rtv/presentation/screens/shipment_list_screen.dart';
import 'package:minerva/get_it/injection.dart';
import 'package:minerva/widgets/minerva_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.scaffoldBgColor,

      drawer: const AppDrawer(),
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                size: 32,
                Icons.menu_rounded,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            );
          },
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  'Home... ',
                  style: GoogleFonts.istokWeb(
                    textStyle:
                        Theme.of(context).textTheme.headlineSmall!.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 33,
                              letterSpacing: 1,
                            ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
              height: 500,
              width: double.maxFinite,
              child: Image.asset(
                'assets/images/home_page_img_without_bg.png',
                fit: BoxFit.fill,
              )),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [_buildMobileLayoutBtns(context)],
            ),
          )
        ],
      ),
    );
  }

  _buildMobileLayoutBtns(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _createGRN(context),
        const SizedBox(
          height: 6,
        ),
        _createIndent(context, Constants.sweetsSection),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }

  Padding _createIndent(
    BuildContext context,
    String section,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MinervaButton(
        onButtonPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (ctx) => MultiBlocProvider(
              providers: [
                BlocProvider(create: (ctx) => sl.get<FetchShopBloc>()),
                BlocProvider(create: (ctx) => sl.get<CreateDispatchCubit>()),
              ],
              child: ListOfShops(section: section),
            ),
          ));
        },
        label: 'Create Indent',
      ),
    );
  }

  Padding _createGRN(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: MinervaButton(
        onButtonPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (ctx) => MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (ctx) => sl.get<FetchShipmentBloc>()
                    ..add(const FetchShipmentEvent.fetchInitialShipment()),
                ),
              ],
              child: const ShipmentListScreen(),
            ),
          ));
        },
        label: 'Create GRN',
      ),
    );
  }
}
