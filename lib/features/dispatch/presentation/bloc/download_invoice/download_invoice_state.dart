part of 'download_invoice_bloc.dart';

@freezed
abstract class DownloadInvoiceState with _$DownloadInvoiceState {
  const factory DownloadInvoiceState.initial() = _Initial;

  const factory DownloadInvoiceState.loading() = _Loading;

  const factory DownloadInvoiceState.success(Uint8List data) = _Success;

  const factory DownloadInvoiceState.failure(Failure failure) = _Failure;
}
