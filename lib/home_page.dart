import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minerva/app_drawer.dart';
import 'package:minerva/constants.dart';
import 'package:minerva/features/dispatch/presentation/bloc/fetch_organizations/fetch_organization_bloc.dart';
import 'package:minerva/features/dispatch/presentation/screen/list_of_organizations.dart';
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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Padding(
          //   padding: const EdgeInsets.only(left: 15),
          //   child: Text(
          //     'Home... ',
          //     style: GoogleFonts.istokWeb(
          //       textStyle: Theme.of(context).textTheme.headlineSmall!.copyWith(
          //             fontWeight: FontWeight.bold,
          //             fontSize: 33,
          //             letterSpacing: 1,
          //           ),
          //     ),
          //   ),
          // ),

          Flexible(
            flex: 2,
            child: Center(
              child: Image.asset(
                'assets/images/minervalogo_without_bg.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.all(24),
              color: Colors.transparent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [_buildMobileLayoutBtns(context)],
              ),
            ),
          )
        ],
      ),
    );
  }

  _buildMobileLayoutBtns(BuildContext context) {
    return Column(
      children: [
        _createGRN(context),
        const SizedBox(
          height: 16,
        ),
        _createIndent(context, Constants.sweetsSection),
      ],
    );
  }

  Widget _createIndent(
    BuildContext context,
    String section,
  ) {
    return MinervaButton(
      suffixIcon: Icons.arrow_forward_ios_rounded,
      onButtonPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (ctx) => MultiBlocProvider(
            providers: [
              BlocProvider(
                  create: (ctx) => sl.get<FetchOrganizationBloc>()
                    ..add(const FetchOrganizationEvent
                        .fetchInitialOrganization())),
              // we have to know about this , below this
              //BlocProvider(create: (ctx) => sl.get<CreateDispatchCubit>()),
            ],
            child: ListOfOrganizations(section: section),
          ),
        ));
      },
      label: 'Create Indent',
    );
  }

  Widget _createGRN(BuildContext context) {
    return MinervaButton(
      suffixIcon: Icons.arrow_forward_ios_rounded,
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
    );
  }
}
