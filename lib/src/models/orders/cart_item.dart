part of orders_models;

abstract class CartItem implements Built<CartItem, CartItemBuilder> {
  factory CartItem({required String id, required String name, required int quantity, required double price, required String? description, String mentions = '' }) {
    return _$CartItem((CartItemBuilder b) {
      b
        ..id = id
        ..name = name
        ..quantity = quantity
        ..price = price
        ..description = description
        ..mentions = mentions;
    });
  }

  factory CartItem.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  CartItem._();

  String get id;

  String get name;

  int get quantity;

  double get price;

  String? get description;

  String get mentions;

  Map<String, dynamic>? get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>?;

  static Serializer<CartItem> get serializer => _$cartItemSerializer;
}
