import 'package:flutter/material.dart';
import 'package:food_delivery_receptionist/src/container/orders/doneProcessing_orders_container.dart';
import 'package:food_delivery_receptionist/src/models/index.dart';
import 'package:food_delivery_receptionist/src/presentation/widgets/order_widget.dart';

class DoneProcessingOrdersPage extends StatelessWidget {
  const DoneProcessingOrdersPage();

  @override
  Widget build(BuildContext context) {
    return DoneProcessingOrdersContainer(
      builder: (BuildContext context, Map<String, Order> orders) {
        final List<Order> sortedOrdersList = orders.values.toList();
        sortedOrdersList.sort((Order a, Order b) => a.date.compareTo(b.date));
        return Scaffold(
          body: ListView.builder(
              itemCount: sortedOrdersList.length,
              itemBuilder: (BuildContext context, int index) => OrderWidget(order: sortedOrdersList[index])),
        );
      },
    );
  }
}
