import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery_receptionist/src/actions/index.dart';
import 'package:food_delivery_receptionist/src/actions/orders/index.dart';
import 'package:food_delivery_receptionist/src/container/orders/pending_orders_container.dart';
import 'package:food_delivery_receptionist/src/models/index.dart';

class PendingOrdersPage extends StatelessWidget {

  const PendingOrdersPage();

  void _response(AppAction action) {}

  @override
  Widget build(BuildContext context) {
    return PendingOrdersContainer(
      builder: (BuildContext context, Map<String, Order> orders) {
        final List<Order> sortedOrdersList = orders.values.toList();
        sortedOrdersList.sort((Order a, Order b) => a.date.compareTo(b.date));
        return Container(
          color: Colors.blue,
          width: double.infinity,
          height: 200,
          child: Column(
            children: <Widget>[
              Text(
                sortedOrdersList[0].date,
                style: const TextStyle(color: Colors.red),
              ),
              TextButton(
                  onPressed: () {
                    StoreProvider.of<AppState>(context).dispatch(UpdateStatusOrder(
                        orderId: sortedOrdersList[0].id, newStatus: StatusOrder.acceptedOrder, response: _response));
                  },
                  child: Text(
                    'accept',
                    style: TextStyle(color: Colors.white),
                  )),
              TextButton(
                  onPressed: () {
                    StoreProvider.of<AppState>(context).dispatch(UpdateStatusOrder(
                        orderId: sortedOrdersList[0].id, newStatus: StatusOrder.declinedOrder, response: _response));
                  },
                  child: Text(
                    'decline',
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          ),
        );
      },
    );
  }
}
