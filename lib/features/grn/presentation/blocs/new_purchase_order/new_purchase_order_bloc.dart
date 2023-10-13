import 'package:core/failures/failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minerva/features/grn/domain/entities/PurchaseOrder_form.dart';
import 'package:minerva/features/grn/domain/repository/grn_repository.dart';
import 'package:minerva/log/app_logger.dart';
import 'package:injectable/injectable.dart';

part 'new_purchase_order_bloc.freezed.dart';
part 'new_purchase_order_event.dart';
part 'new_purchase_order_state.dart';

@injectable
class NewPurchaseOrderBloc
    extends Bloc<NewPurchaseOrderEvent, NewPurchaseOrderState> {
  final GRNRepository repo;

  NewPurchaseOrderBloc(this.repo)
      : super(const NewPurchaseOrderState.initial()) {
    on<NewPurchaseOrderEvent>((event, emit) async {
      await event.map(
        createPurchaseOrder: (e) async {
          emit(const NewPurchaseOrderState.loading());

          try {
            if (e.form.products.isEmpty) {
              emit(const NewPurchaseOrderState.failure(
                  Failure(error: 'Please add at least one product')));
            } else {
              final result = await repo.createPurchaseOrder(e.form);
              emit(result.fold(
                (l) => NewPurchaseOrderState.failure(Failure(error: l.error)),
                (r) => const NewPurchaseOrderState.success(),
              ));
            }
          } catch (e, st) {
            print(e);
            print(st);
            logError(e, st, '[bloc] could not create shipment');
            emit(NewPurchaseOrderState.failure(Failure(error: e.toString())));
          }
        },
      );
    });
  }
}
