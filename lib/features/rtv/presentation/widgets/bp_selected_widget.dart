import 'package:base_auth/entity/id_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minerva/features/rtv/presentation/bloc/blocs.dart';
import 'package:minerva/features/rtv/presentation/widgets/bpartners_list.dart';

class BpSelectionWidget extends StatefulWidget {
  const BpSelectionWidget({Key? key, required this.onSelected})
      : super(key: key);

  final Function(IdName bp, bool isSelected) onSelected;

  @override
  _BpSelectionWidgetState createState() => _BpSelectionWidgetState();
}

class _BpSelectionWidgetState extends State<BpSelectionWidget> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return _buildList();
  }

  Widget _buildList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 4),
          child: Text(
            "Business Partner",
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Card(elevation: 3,
          child: SizedBox(
            width: double.maxFinite,
            height: 50.0,
            child: ElevatedButton(
              onPressed: () {
                _showSelectableBottomSheet(
                  context,
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1),
                  borderRadius:
                      BorderRadius.circular(8.0),
                ),
              ),
              child: Text(
                selectedValue ?? 'Select Business Partner',
                style: const TextStyle(fontSize: 20.0),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _showSelectableBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true, 
      builder: (ctxt) {
        return BlocProvider.value(
          value: BlocProvider.of<FetchBusinessPartnerBloc>(context),
          child: Container(
            padding: const EdgeInsets.all(8),
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height *
                  0.5, 
            ),
            child: BPartnersList(
              initalValue: selectedValue,
              onSelected: (IdName bp, bool isSelected) =>
                  widget.onSelected(bp, isSelected),
            ),
          ),
        );
      },
    ).then((value) {
      if (value != null) {
        final bp = value as IdName;
        setState(() {
          selectedValue = bp.name;
        });
      }
    });
  }
}


// perfect dropDown
// use this when we use dropDown
// bool isDropdownOpen = false;
// String selectedValue = 'Select Business Partner';
  // void toggleDropdown() {
  //   setState(() {
  //     isDropdownOpen = !isDropdownOpen;
  //   });
  // }
// perfect dropDown
// Widget _buildList(List<IdName> bps) {
//     return Padding(
//       padding: const EdgeInsets.all(6.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           GestureDetector(
//             onTap: toggleDropdown,
//             child: Container(
//               width: double.maxFinite,
//               padding: const EdgeInsets.all(10.0),
//               decoration: BoxDecoration(
//                 color: Colors.transparent, // Background color of the container
//                 borderRadius: BorderRadius.circular(10.0), // Rounded corners
//                 border: Border.all(
//                   color:
//                       const Color.fromARGB(255, 160, 140, 138), // Border color
//                   width: 2.0, // Border width
//                 ),
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   Text(
//                     selectedValue,
//                     style: const TextStyle(
//                       fontSize: 18.0,
//                       color: Color.fromRGBO(192, 0, 17, 1),
//                     ),
//                   ),
//                   Icon(
//                     isDropdownOpen
//                         ? Icons.keyboard_arrow_up_rounded
//                         : Icons.keyboard_arrow_down_rounded,
//                     size: 36,
//                     color: const Color.fromRGBO(192, 0, 17, 1),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           // if (isDropdownOpen)
//           AnimatedContainer(
//             duration: const Duration(
//                 milliseconds: 400), // Adjust the animation duration as needed
//             curve: Curves
//                 .easeInOut, // Use a different curve for animation easing if desired
//             width: double.maxFinite,
//             height: isDropdownOpen
//                 ? bps.length * 50.0
//                 : 0, // Adjust the item height as needed
//             margin: const EdgeInsets.only(top: 5.0),
//             decoration: BoxDecoration(
//               color: Colors.transparent, // Background color of the container
//               borderRadius: BorderRadius.circular(10.0), // Rounded corners
//               border: Border.all(
//                 color: const Color.fromARGB(255, 160, 140, 138), // Border color
//                 width: 2.0, // Border width
//               ),
//             ),
//             child: isDropdownOpen
//                 ? ListView.builder(
//                     shrinkWrap: true,
//                     itemCount: bps.length,
//                     itemBuilder: (context, index) {
//                       return GestureDetector(
//                         onTap: () {
//                           setState(() {
//                             widget.onSelected(bps[index]);
//                             selectedValue = bps[index].name;
//                             isDropdownOpen = false;
//                           });
//                         },
//                         child: Container(
//                           padding: const EdgeInsets.all(10.0),
//                           decoration: BoxDecoration(
//                             border: Border(
//                               bottom: bps.last == bps[index]
//                                   ? const BorderSide(
//                                       color: Colors.transparent,
//                                       width: 0.0,
//                                     )
//                                   : const BorderSide(
//                                       color: Color.fromARGB(
//                                           255, 160, 140, 138), // Border color
//                                       width: 2.0,
//                                     ),
//                             ),
//                           ),
//                           child: Text(
//                             bps[index].name,
//                             style: const TextStyle(
//                               fontSize: 18.0,
//                               color: Color.fromRGBO(192, 0, 17, 1),
//                             ),
//                           ),
//                         ),
//                       );
//                     },
//                   )
//                 : const SizedBox.shrink(),
//           ),
//           // SizedBox(height: 10.0),
//         ],
//       ),
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
