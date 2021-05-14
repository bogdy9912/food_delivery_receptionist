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
        final Order order = sortedOrdersList[0];
        return Container(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(order.address.contactName),
                  Text('${order.total}'),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: order.products.length,
                  itemBuilder: (BuildContext context, int index) => Container(
                    child: Text(order.products[index].name),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  TextButton(
                      onPressed: () {
                        StoreProvider.of<AppState>(context).dispatch(UpdateStatusOrder(
                            orderId: order.id, newStatus: StatusOrder.declinedOrder, response: _response));
                      },
                      child: const Text('Refuza')),
                  ElevatedButton(
                      onPressed: () {
                        StoreProvider.of<AppState>(context).dispatch(UpdateStatusOrder(
                            orderId: order.id, newStatus: StatusOrder.inProcess, response: _response));
                      },
                      child: const Text('Accept')),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
