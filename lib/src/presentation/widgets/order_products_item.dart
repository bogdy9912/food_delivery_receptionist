import 'package:flutter/material.dart';
import 'package:food_delivery_receptionist/src/models/index.dart';

class OrderProductsItem extends StatelessWidget {
  const OrderProductsItem({required this.item});
  final CartItem item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(item.name),
      subtitle: Text(item.mentions),
      trailing: Text('${item.quantity}'),
    );
  }
}
