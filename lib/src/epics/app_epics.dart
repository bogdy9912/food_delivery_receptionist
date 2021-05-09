import 'package:food_delivery_receptionist/src/data/auth_api.dart';
import 'package:food_delivery_receptionist/src/epics/auth_epics.dart';
import 'package:food_delivery_receptionist/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';

class AppEpics{
  const AppEpics({required AuthApi authApi}): _authApi = authApi;

  final AuthApi _authApi;

  Epic<AppState> get epics => combineEpics(<Epic<AppState>>[
      AuthEpics(api: _authApi).epics,
  ]);
}