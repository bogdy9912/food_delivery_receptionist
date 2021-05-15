import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery_receptionist/src/actions/index.dart';
import 'package:food_delivery_receptionist/src/actions/orders/index.dart';
import 'package:food_delivery_receptionist/src/container/orders/pending_orders_container.dart';
import 'package:food_delivery_receptionist/src/models/index.dart';
import 'package:food_delivery_receptionist/src/presentation/widgets/order_products_item.dart';

class PendingOrdersPage extends StatelessWidget {
  const PendingOrdersPage();

  void _response(AppAction action) {}

  @override
  Widget build(BuildContext context) {
    return PendingOrdersContainer(builder: (BuildContext context, Map<String, Order> orders) {
      if (orders.isNotEmpty) {
        final List<Order> sortedOrdersList = orders.values.toList();
        sortedOrdersList.sort((Order a, Order b) => a.date.compareTo(b.date));
        final Order order = sortedOrdersList[0];
        return Scaffold(
          appBar: AppBar(),
          body: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      order.address.contactName,
                      style: const TextStyle(fontSize: 22),
                    ),
                    Text(
                      '${order.total} Lei',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const Divider(),
                Expanded(
                  child: ListView.builder(
                      itemCount: 100,
                      itemBuilder: (BuildContext context, int index) => OrderProductsItem(item: order.products[0])),
                ),
                const Divider(),
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
          ),
        );
      } else {
        return const Scaffold(
          body: Center(
            child: Text('Nu exista comenzi'),
          ),
        );
      }
    });
  }
}
