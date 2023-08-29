import 'package:base_auth/entity/id_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minerva/features/rtv/domain/entity/business_partners.dart';
import 'package:minerva/features/rtv/presentation/bloc/blocs.dart';
import 'package:minerva/loading_indicator.dart';
import 'package:widgets/widgets.dart';

class BpSelectionWidget extends StatefulWidget {
  const BpSelectionWidget({Key? key, required this.onSelected})
      : super(key: key);

  final Function(BusinessPartners bp) onSelected;

  @override
  _BpSelectionWidgetState createState() => _BpSelectionWidgetState();
}

class _BpSelectionWidgetState extends State<BpSelectionWidget> {
  BusinessPartners? _selected;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FetchBusinessPartnerBloc, FetchBusinessPartnerState>(
      listener: (ctx, state) {
        state.maybeWhen(
          success: (list, _, __) {
            if (list.isNotEmpty) {
              setState(() {
                _selected = list[0];
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

  Widget _buildList(List<BusinessPartners> bps) {
    return ListView.separated(
      itemCount: bps.length,
      shrinkWrap: true,
      separatorBuilder: (ctx, idx) => const Divider(),
      itemBuilder: (ctx, idx) {
        return RadioListTile<BusinessPartners>(
          title: Text(bps[idx].name),
          groupValue: _selected,
          value: bps[idx],
          onChanged: (v) {
            setState(() {
              widget.onSelected(bps[idx]);
              _selected = v;
            });
          },
        );
      },
    );
  }
}
