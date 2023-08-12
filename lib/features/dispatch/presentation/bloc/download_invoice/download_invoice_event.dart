part of 'download_invoice_bloc.dart';

@freezed
abstract class DownloadInvoiceEvent with _$DownloadInvoiceEvent {
  const factory DownloadInvoiceEvent.downloadInvoice(String orderId) = _DownloadInvoice;
}