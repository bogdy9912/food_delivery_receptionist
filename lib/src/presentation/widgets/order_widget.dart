import 'package:flutter/material.dart';
import 'package:food_delivery_receptionist/src/models/index.dart';

class OrderWidget extends StatelessWidget {
  const OrderWidget({required this.buttons, required this.order});

  final List<Widget> buttons;
  final Order order;

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
          Row(
            mainAxisAlignment: buttons.length == 1 ? MainAxisAlignment.center : MainAxisAlignment.spaceAround,
            children: buttons,
          ),
        ],
      ),
    );
  }
}
