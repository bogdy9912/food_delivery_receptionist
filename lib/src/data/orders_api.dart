import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_delivery_receptionist/src/models/index.dart';
import 'package:food_delivery_receptionist/src/models/orders/index.dart';

class OrdersApi {
  const OrdersApi({required FirebaseFirestore firestore}) : _firestore = firestore;

  final FirebaseFirestore _firestore;

  Stream<List<Order>> getNewOrders({required String companyId}) {
    return _firestore
        .collection('companies/$companyId/orders')
        .where('status', isEqualTo: 'pending') //
        .snapshots()
        .map((QuerySnapshot snapshot) =>
            snapshot.docs.map((QueryDocumentSnapshot doc) => Order.fromJson(doc.data())).toList());
  }

  Future<void> updateStatusOrder(
      {required String companyId, required String orderId, required StatusOrder newStatus}) async {
    await _firestore
        .doc('companies/$companyId/orders/$orderId')
        .update(<String, dynamic>{'status': newStatus.toString()});
  }
}
