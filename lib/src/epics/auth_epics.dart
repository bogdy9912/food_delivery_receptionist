import 'package:food_delivery_receptionist/src/data/auth_api.dart';
import 'package:food_delivery_receptionist/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';

class AuthEpics{
  const AuthEpics({required AuthApi api}): _api = api;

  final AuthApi _api;

  Epic<AppState> get epics => combineEpics(<Epic<AppState>>[

  ]);
}