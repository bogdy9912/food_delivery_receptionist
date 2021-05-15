import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery_receptionist/src/actions/orders/index.dart';
import 'package:food_delivery_receptionist/src/models/index.dart';
import 'file:///E:/GitFolder/food_delivery_receptionist/lib/src/presentation/navigation_pages/inProcess_orders_page.dart';
import 'file:///E:/GitFolder/food_delivery_receptionist/lib/src/presentation/navigation_pages/pending_orders_page.dart';
import 'package:food_delivery_receptionist/src/presentation/navigation_pages/doneProcessing_orders_page.dart';

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
      body: <Widget>[
        const PendingOrdersPage(),
        const InProcessOrdersPage(),
        const DoneProcessingOrdersPage(),
      ][_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        items: items,
        onTap: (int index) {
          if (index == 1) {
            StoreProvider.of<AppState>(context).dispatch(const GetInProcessOrders(companyId: 'HIxvesXRNrHMGxZM4TQy'));
          }else if (index == 2){
            StoreProvider.of<AppState>(context).dispatch(const GetDoneProcessingOrders(companyId: 'HIxvesXRNrHMGxZM4TQy'));

          }

          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
