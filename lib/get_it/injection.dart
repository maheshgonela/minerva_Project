import 'package:get_it/get_it.dart';
import 'package:minerva/get_it/injection.config.dart';
import 'package:injectable/injectable.dart';

final GetIt sl = GetIt.instance;

@injectableInit
void configureInjection(String env) => sl.init(environment: env);
