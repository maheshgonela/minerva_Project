import 'package:base_auth/entity/id_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minerva/features/rtv/presentation/bloc/blocs.dart';
import 'package:minerva/loading_indicator.dart';
import 'package:widgets/widgets.dart';

class BpSelectionWidget extends StatefulWidget {
  const BpSelectionWidget({Key? key, required this.onSelected})
      : super(key: key);

  final Function(IdName bp) onSelected;

  @override
  _BpSelectionWidgetState createState() => _BpSelectionWidgetState();
}

class _BpSelectionWidgetState extends State<BpSelectionWidget> {
  String selectedValue = 'Select Business Partner';
  bool isDropdownOpen = false;

  void toggleDropdown() {
    setState(() {
      isDropdownOpen = !isDropdownOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FetchBusinessPartnerBloc, FetchBusinessPartnerState>(
      listener: (ctx, state) {
        state.maybeWhen(
          success: (list, _, __) {
            if (list.isNotEmpty) {
              setState(() {
                selectedValue = list[0].name;
                widget.onSelected(list[0]);
              });
            }
          },
          orElse: () {},
        );
      },
      builder: (ctx, state) {
        return state.when(
          initial: () => const LoadingIndicator(),
          loading: () => const LoadingIndicator(),
          success: (bps, _, __) => _buildList(bps),
          failure: (f) => AppErrorWidget(
            error: f.error,
            onRefresh: () {
              BlocProvider.of<FetchBusinessPartnerBloc>(context).add(
                  const FetchBusinessPartnerEvent
                      .fetchInitialBusinessPartner());
            },
          ),
        );
      },
    );
  }

  Widget _buildList(List<IdName> bps) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: toggleDropdown,
            child: Container(
              width: double.maxFinite,
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.transparent, // Background color of the container
                borderRadius: BorderRadius.circular(10.0), // Rounded corners
                border: Border.all(
                  color:
                      const Color.fromARGB(255, 160, 140, 138), // Border color
                  width: 2.0, // Border width
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    selectedValue,
                    style: const TextStyle(
                      fontSize: 18.0,
                      color: Color.fromRGBO(192, 0, 17, 1),
                    ),
                  ),
                  Icon(
                    isDropdownOpen
                        ? Icons.keyboard_arrow_up_rounded
                        : Icons.keyboard_arrow_down_rounded,
                    size: 36,
                    color: const Color.fromRGBO(192, 0, 17, 1),
                  ),
                ],
              ),
            ),
          ),
          // if (isDropdownOpen)
          AnimatedContainer(
            duration: const Duration(
                milliseconds: 400), // Adjust the animation duration as needed
            curve: Curves
                .easeInOut, // Use a different curve for animation easing if desired
            width: double.maxFinite,
            height: isDropdownOpen
                ? bps.length * 50.0
                : 0, // Adjust the item height as needed
            margin: const EdgeInsets.only(top: 5.0),
            decoration: BoxDecoration(
              color: Colors.transparent, // Background color of the container
              borderRadius: BorderRadius.circular(10.0), // Rounded corners
              border: Border.all(
                color: const Color.fromARGB(255, 160, 140, 138), // Border color
                width: 2.0, // Border width
              ),
            ),
            child: isDropdownOpen
                ? ListView.builder(
                    shrinkWrap: true,
                    itemCount: bps.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            widget.onSelected(bps[index]);
                            selectedValue = bps[index].name;
                            isDropdownOpen = false;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: bps.last == bps[index]
                                  ? const BorderSide(
                                      color: Colors.transparent,
                                      width: 0.0,
                                    )
                                  : const BorderSide(
                                      color: Color.fromARGB(
                                          255, 160, 140, 138), // Border color
                                      width: 2.0,
                                    ),
                            ),
                          ),
                          child: Text(
                            bps[index].name,
                            style: const TextStyle(
                              fontSize: 18.0,
                              color: Color.fromRGBO(192, 0, 17, 1),
                            ),
                          ),
                        ),
                      );
                    },
                  )
                : const SizedBox.shrink(),
          ),
          // SizedBox(height: 10.0),
        ],
      ),
    );
  }
}


//old drop down widget
// return Container(
//       padding: const EdgeInsets.all(10.0),
//       decoration: BoxDecoration(
//         color: Colors.transparent, // Background color of the container
//         borderRadius: BorderRadius.circular(10.0), // Rounded corners
//         border: Border.all(
//           color: const Color.fromARGB(255, 160, 140, 138), // Border color
//           width: 2.0, // Border width
//         ),
//       ),
//       child: DropdownButton(
//         value: _selected,
//         //onChanged: (value) {},
//         onChanged: (v) {
//           setState(() {
//             // widget.onSelected(v as IdName);
//             _selected = v;
//           });
//         },
//         items: bps
//             .map(
//               (e) => DropdownMenuItem(
//                 value: e.name,
//                 child: Container(
//                   padding:
//                       const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
//                   child: Text(
//                     e.name,
//                     style: const TextStyle(
//                       fontSize: 18,
//                       color: Color.fromRGBO(192, 0, 17, 1),
//                     ),
//                   ),
//                 ),
//               ),
//             )
//             .toList(),
//         style: const TextStyle(
//           fontSize: 18,
//           color: Color.fromRGBO(192, 0, 17, 1),
//         ),
//         icon: const Icon(
//           Icons.keyboard_arrow_down_rounded,
//           size: 36,
//           color: Color.fromRGBO(192, 0, 17, 1),
//         ),
//         iconEnabledColor: Colors.blue,
//         iconDisabledColor: Colors.grey,
//         underline: Container(
//           height: 0, // Remove the underline
//         ),
//         isExpanded: true,
//       ),
//     );

//old code
// import 'package:base_auth/entity/id_name.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:minerva/features/rtv/domain/entity/business_partners.dart';
// import 'package:minerva/features/rtv/presentation/bloc/blocs.dart';
// import 'package:minerva/loading_indicator.dart';
// import 'package:widgets/widgets.dart';

// class BpSelectionWidget extends StatefulWidget {
//   const BpSelectionWidget({Key? key, required this.onSelected})
//       : super(key: key);

//   final Function(BusinessPartners bp) onSelected;

//   @override
//   _BpSelectionWidgetState createState() => _BpSelectionWidgetState();
// }

// class _BpSelectionWidgetState extends State<BpSelectionWidget> {
//   BusinessPartners? _selected;

//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<FetchBusinessPartnerBloc, FetchBusinessPartnerState>(
//       listener: (ctx, state) {
//         state.maybeWhen(
//           success: (list, _, __) {
//             if (list.isNotEmpty) {
//               setState(() {
//                 _selected = list[0];
//                 widget.onSelected(list[0]);
//               });
//             }
//           },
//           orElse: () {},
//         );
//       },
//       builder: (ctx, state) {
//         return state.when(
//           initial: () => const LoadingIndicator(),
//           loading: () => const LoadingIndicator(),
//           success: (bps, _, __) => _buildList(bps),
//           failure: (f) => AppErrorWidget(
//             error: f.error,
//             onRefresh: () {
//               BlocProvider.of<FetchBusinessPartnerBloc>(context).add(
//                   const FetchBusinessPartnerEvent
//                       .fetchInitialBusinessPartner());
//             },
//           ),
//         );
//       },
//     );
//   }

//   Widget _buildList(List<BusinessPartners> bps) {
//     return ListView.builder(
//       itemCount: bps.length,
//       shrinkWrap: true,
//       itemBuilder: (ctx, idx) {
//         return RadioListTile<BusinessPartners>(
//           title: Text(bps[idx].name),
//           groupValue: _selected,
//           value: bps[idx],
//           onChanged: (v) {
//             setState(() {
//               widget.onSelected(bps[idx]);
//               _selected = v;
//             });
//           },
//         );
//       },
//     );
//   }
// }
