import 'package:flutter/material.dart';
import 'package:food_delivery_receptionist/src/container/orders/inProcess_orders_container.dart';
import 'package:food_delivery_receptionist/src/models/index.dart';
import 'package:food_delivery_receptionist/src/presentation/widgets/order_widget.dart';

class InProcessOrdersPage extends StatelessWidget {
  const InProcessOrdersPage();

  @override
  Widget build(BuildContext context) {
    return InProcessOrdersContainer(
      builder: (BuildContext context, Map<String, Order> orders) {
        final List<Order> sortedOrdersList = orders.values.toList();
        sortedOrdersList.sort((Order a, Order b) => a.date.compareTo(b.date));

        return Scaffold(
          appBar: AppBar(),
          body: ListView.builder(
            itemCount: sortedOrdersList.length,
            itemBuilder: (BuildContext context, int index) => OrderWidget(order: sortedOrdersList[index]),
          ),
        );
      },
    );
  }
}
