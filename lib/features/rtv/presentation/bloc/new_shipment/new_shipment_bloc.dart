import 'package:core/failures/failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minerva/features/rtv/domain/entity/entities.dart';
import 'package:minerva/features/rtv/domain/repository/shipment_repo.dart';
import 'package:minerva/log/app_logger.dart';
import 'package:injectable/injectable.dart';

part 'new_shipment_bloc.freezed.dart';
part 'new_shipment_event.dart';
part 'new_shipment_state.dart';

@injectable
class NewShipmentBloc extends Bloc<NewShipmentEvent, NewShipmentState> {
  final ShipmentRepo repo;

  NewShipmentBloc(this.repo) : super(const NewShipmentState.initial()) {
    on<NewShipmentEvent>((event, emit) async {
      await event.map(
        createShipment: (e) async {
          emit(const NewShipmentState.loading());

          try {
            if (e.form.products.isEmpty) {
              emit(const NewShipmentState.failure(Failure(error: 'Please add at least one product')));
            } else {
              final result = await repo.createShipment(e.form);
              emit(result.fold(
                (l) => NewShipmentState.failure(Failure(error: l.error)),
                (r) => const NewShipmentState.success(),
              ));
            }
          } catch (e, st) {
            logError(e, st, '[bloc] could not create shipment');
            emit(NewShipmentState.failure(Failure(error: e.toString())));
          }
        },
      );
    });
  }
}
