import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery_receptionist/src/actions/orders/index.dart';
import 'package:food_delivery_receptionist/src/container/orders/pending_orders_container.dart';
import 'package:food_delivery_receptionist/src/models/index.dart';

class Homepage extends StatelessWidget {
  const Homepage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOMEPAGE'),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.add),
              onPressed: () =>
                  StoreProvider.of<AppState>(context).dispatch(const GetNewOrders(companyId: 'HIxvesXRNrHMGxZM4TQy')))
        ],
      ),
      body: PendingOrdersContainer(
        builder: (BuildContext context, Map<String, Order> orders) => ListView.builder(
          itemCount: orders.length,
          itemBuilder: (BuildContext context, int index) => Container(
            color: Colors.blue,
            width: 100,
            height: 100,
            child: Text(
              orders.values.toList()[index].id,
              style: const TextStyle(color: Colors.red),
            ),
          ),
        ),
      ),
    );
  }
}
