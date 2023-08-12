import 'dart:typed_data';

import 'package:core/failures/failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minerva/features/dispatch/domain/repository/dispatch_repo.dart';
import 'package:injectable/injectable.dart';

part 'download_invoice_bloc.freezed.dart';
part 'download_invoice_event.dart';
part 'download_invoice_state.dart';

@injectable
class DownloadInvoiceBloc extends Bloc<DownloadInvoiceEvent, DownloadInvoiceState> {
  final DispatchRepository repository;

  DownloadInvoiceBloc({required this.repository}) : super(const DownloadInvoiceState.initial()) {
    on<DownloadInvoiceEvent>((event, emit) async {
      await event.map(
        downloadInvoice: (e) async {
          emit(const DownloadInvoiceState.loading());

          final result = await repository.downloadInvoice(e.orderId);
          emit(result.fold(
            (f) => DownloadInvoiceState.failure(f),
            (r) => DownloadInvoiceState.success(r),
          ));
        },
      );
    });
  }
}
