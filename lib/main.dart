import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery_receptionist/app_theme.dart';
import 'package:food_delivery_receptionist/src/models/index.dart';
import 'package:food_delivery_receptionist/src/presentation/app_routes.dart';
import 'package:food_delivery_receptionist/src/presentation/mixins/init_mixin.dart';
import 'package:redux/redux.dart';

void main() {
  runApp(FoodDeliveryReceptionist());
}

class FoodDeliveryReceptionist extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _FoodDeliveryReceptionistState createState() => _FoodDeliveryReceptionistState();
}

class _FoodDeliveryReceptionistState extends State<FoodDeliveryReceptionist> with InitMixin<FoodDeliveryReceptionist> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Store<AppState>>(
      future: future,
      builder: (BuildContext context, AsyncSnapshot<Store<AppState>> snapshot) {
        if (snapshot.hasData) {
          final Store<AppState> store = snapshot.data!;
          return StoreProvider<AppState>(
            store: store,
            child: MaterialApp(
              title: 'Food Delivery Recep',
              theme: appThemeData(context),
              routes: AppRoutes.routes,
            ),
          );
        }
        if (snapshot.hasError) {
          throw snapshot.error!;
        }

        return const MaterialApp(
          title: 'Food Delivery Recep',
//          theme: ThemeData.dark(),
          home: Scaffold(
            body: Center(child: CircularProgressIndicator()),
          ),
        );
      },
    );
  }
}
