import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery_receptionist/src/actions/orders/index.dart';
import 'package:food_delivery_receptionist/src/models/index.dart';
import 'package:food_delivery_receptionist/src/presentation/homepage/accepted_orders_page.dart';
import 'package:food_delivery_receptionist/src/presentation/homepage/pending_orders_page.dart';

class Homepage extends StatefulWidget {
  const Homepage();

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<BottomNavigationBarItem> get items => const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: 'Orders'),
        BottomNavigationBarItem(icon: Icon(Icons.inventory), label: 'accepted'),
        BottomNavigationBarItem(icon: Icon(Icons.done_all), label: 'done'),
      ];

  int _selectedIndex = 0;

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
      body: <Widget>[
        const PendingOrdersPage(),
        const AcceptedOrdersPage(),
      ][_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        items: items,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
