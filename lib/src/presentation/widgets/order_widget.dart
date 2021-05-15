import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery_receptionist/src/actions/index.dart';
import 'package:food_delivery_receptionist/src/actions/orders/index.dart';
import 'package:food_delivery_receptionist/src/models/index.dart';

class OrderWidget extends StatelessWidget {
  const OrderWidget({required this.order});

  final Order order;

  void _response(AppAction action) {}

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(order.address.contactName),
              Text('${order.total}'),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              StoreProvider.of<AppState>(context).dispatch(
                  UpdateStatusOrder(orderId: order.id, newStatus: StatusOrder.doneProcessing, response: _response));
            },
            child: const Text('Finish'),
          ),
        ],
      ),
    );
  }
}
