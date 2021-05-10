import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_delivery_receptionist/src/models/orders/index.dart';

class OrdersApi {
  const OrdersApi({required FirebaseFirestore firestore}) : _firestore = firestore;

  final FirebaseFirestore _firestore;

  Stream<List<Order>> getNewOrders({required String companyId}) {
    return _firestore.collection('companies/$companyId/orders').snapshots().map((QuerySnapshot snapshot) =>
        snapshot.docs.map((QueryDocumentSnapshot doc) => Order.fromJson(doc.data())).toList());
  }
}
