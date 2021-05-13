import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:food_delivery_receptionist/src/actions/auth/index.dart';
import 'package:food_delivery_receptionist/src/data/auth_api.dart';
import 'package:food_delivery_receptionist/src/data/orders_api.dart';
import 'package:food_delivery_receptionist/src/epics/app_epics.dart';
import 'package:food_delivery_receptionist/src/models/index.dart';
import 'package:food_delivery_receptionist/src/reducer/reducer.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

Future<Store<AppState>> init() async {

  await Firebase.initializeApp();

  final AuthApi _authApi = AuthApi(auth: FirebaseAuth.instance, firestore: FirebaseFirestore.instance);
  final OrdersApi _ordersApi = OrdersApi(firestore: FirebaseFirestore.instance);

  final AppEpics epic = AppEpics(authApi: _authApi, ordersApi: _ordersApi);

  return Store<AppState>(
    reducer,
    initialState: AppState.initialState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(epic.epics),
    ],
  )..dispatch(const InitializeApp());
}
