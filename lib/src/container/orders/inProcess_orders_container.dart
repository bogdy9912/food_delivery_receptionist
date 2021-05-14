import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery_receptionist/src/models/index.dart';
import 'package:redux/redux.dart';

class InProcessOrdersContainer extends StatelessWidget {
  const InProcessOrdersContainer({required this.builder});

  final ViewModelBuilder<Map<String, Order>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Map<String, Order>>(
      builder: builder,
      converter: (Store<AppState> store) => store.state.orderState.inProcessOrders.asMap(),
    );
  }
}
