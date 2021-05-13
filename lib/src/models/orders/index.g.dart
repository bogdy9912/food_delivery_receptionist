// GENERATED CODE - DO NOT MODIFY BY HAND

part of orders_models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PaymentMethod _$card = const PaymentMethod._('card');
const PaymentMethod _$cash = const PaymentMethod._('cash');

PaymentMethod _$valueOf(String name) {
  switch (name) {
    case 'card':
      return _$card;
    case 'cash':
      return _$cash;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<PaymentMethod> _$values =
    new BuiltSet<PaymentMethod>(const <PaymentMethod>[
  _$card,
  _$cash,
]);

Serializer<Order> _$orderSerializer = new _$OrderSerializer();
Serializer<PaymentMethod> _$paymentMethodSerializer =
    new _$PaymentMethodSerializer();
Serializer<AddressPoint> _$addressPointSerializer =
    new _$AddressPointSerializer();
Serializer<OrdersState> _$ordersStateSerializer = new _$OrdersStateSerializer();
Serializer<CartItem> _$cartItemSerializer = new _$CartItemSerializer();

class _$OrderSerializer implements StructuredSerializer<Order> {
  @override
  final Iterable<Type> types = const [Order, _$Order];
  @override
  final String wireName = 'Order';

  @override
  Iterable<Object?> serialize(Serializers serializers, Order object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'uid',
      serializers.serialize(object.uid, specifiedType: const FullType(String)),
      'companyId',
      serializers.serialize(object.companyId,
          specifiedType: const FullType(String)),
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(AddressPoint)),
      'products',
      serializers.serialize(object.products,
          specifiedType:
              const FullType(BuiltList, const [const FullType(CartItem)])),
      'total',
      serializers.serialize(object.total,
          specifiedType: const FullType(double)),
      'methodOfPayment',
      serializers.serialize(object.methodOfPayment,
          specifiedType: const FullType(PaymentMethod)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(StatusOrder)),
    ];
    Object? value;
    value = object.instructions;
    if (value != null) {
      result
        ..add('instructions')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.review;
    if (value != null) {
      result
        ..add('review')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Order deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrderBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'companyId':
          result.companyId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'address':
          result.address.replace(serializers.deserialize(value,
              specifiedType: const FullType(AddressPoint))! as AddressPoint);
          break;
        case 'products':
          result.products.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CartItem)]))!
              as BuiltList<Object>);
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'methodOfPayment':
          result.methodOfPayment = serializers.deserialize(value,
              specifiedType: const FullType(PaymentMethod)) as PaymentMethod;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'instructions':
          result.instructions = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(StatusOrder)) as StatusOrder;
          break;
        case 'review':
          result.review = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PaymentMethodSerializer implements PrimitiveSerializer<PaymentMethod> {
  @override
  final Iterable<Type> types = const <Type>[PaymentMethod];
  @override
  final String wireName = 'PaymentMethod';

  @override
  Object serialize(Serializers serializers, PaymentMethod object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  PaymentMethod deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PaymentMethod.valueOf(serialized as String);
}

class _$AddressPointSerializer implements StructuredSerializer<AddressPoint> {
  @override
  final Iterable<Type> types = const [AddressPoint, _$AddressPoint];
  @override
  final String wireName = 'AddressPoint';

  @override
  Iterable<Object?> serialize(Serializers serializers, AddressPoint object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'contactName',
      serializers.serialize(object.contactName,
          specifiedType: const FullType(String)),
      'contactPhone',
      serializers.serialize(object.contactPhone,
          specifiedType: const FullType(String)),
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(String)),
      'city',
      serializers.serialize(object.city, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AddressPoint deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AddressPointBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'contactName':
          result.contactName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'contactPhone':
          result.contactPhone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$OrdersStateSerializer implements StructuredSerializer<OrdersState> {
  @override
  final Iterable<Type> types = const [OrdersState, _$OrdersState];
  @override
  final String wireName = 'OrdersState';

  @override
  Iterable<Object?> serialize(Serializers serializers, OrdersState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'order',
      serializers.serialize(object.order,
          specifiedType: const FullType(
              BuiltMap, const [const FullType(String), const FullType(Order)])),
    ];

    return result;
  }

  @override
  OrdersState deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrdersStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'order':
          result.order.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(Order)]))!);
          break;
      }
    }

    return result.build();
  }
}

class _$CartItemSerializer implements StructuredSerializer<CartItem> {
  @override
  final Iterable<Type> types = const [CartItem, _$CartItem];
  @override
  final String wireName = 'CartItem';

  @override
  Iterable<Object?> serialize(Serializers serializers, CartItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'quantity',
      serializers.serialize(object.quantity,
          specifiedType: const FullType(int)),
      'price',
      serializers.serialize(object.price,
          specifiedType: const FullType(double)),
      'mentions',
      serializers.serialize(object.mentions,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CartItem deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CartItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mentions':
          result.mentions = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Order extends Order {
  @override
  final String id;
  @override
  final String uid;
  @override
  final String companyId;
  @override
  final AddressPoint address;
  @override
  final BuiltList<CartItem> products;
  @override
  final double total;
  @override
  final PaymentMethod methodOfPayment;
  @override
  final String date;
  @override
  final String? instructions;
  @override
  final StatusOrder status;
  @override
  final String? review;

  factory _$Order([void Function(OrderBuilder)? updates]) =>
      (new OrderBuilder()..update(updates)).build();

  _$Order._(
      {required this.id,
      required this.uid,
      required this.companyId,
      required this.address,
      required this.products,
      required this.total,
      required this.methodOfPayment,
      required this.date,
      this.instructions,
      required this.status,
      this.review})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Order', 'id');
    BuiltValueNullFieldError.checkNotNull(uid, 'Order', 'uid');
    BuiltValueNullFieldError.checkNotNull(companyId, 'Order', 'companyId');
    BuiltValueNullFieldError.checkNotNull(address, 'Order', 'address');
    BuiltValueNullFieldError.checkNotNull(products, 'Order', 'products');
    BuiltValueNullFieldError.checkNotNull(total, 'Order', 'total');
    BuiltValueNullFieldError.checkNotNull(
        methodOfPayment, 'Order', 'methodOfPayment');
    BuiltValueNullFieldError.checkNotNull(date, 'Order', 'date');
    BuiltValueNullFieldError.checkNotNull(status, 'Order', 'status');
  }

  @override
  Order rebuild(void Function(OrderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderBuilder toBuilder() => new OrderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Order &&
        id == other.id &&
        uid == other.uid &&
        companyId == other.companyId &&
        address == other.address &&
        products == other.products &&
        total == other.total &&
        methodOfPayment == other.methodOfPayment &&
        date == other.date &&
        instructions == other.instructions &&
        status == other.status &&
        review == other.review;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc($jc(0, id.hashCode), uid.hashCode),
                                        companyId.hashCode),
                                    address.hashCode),
                                products.hashCode),
                            total.hashCode),
                        methodOfPayment.hashCode),
                    date.hashCode),
                instructions.hashCode),
            status.hashCode),
        review.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Order')
          ..add('id', id)
          ..add('uid', uid)
          ..add('companyId', companyId)
          ..add('address', address)
          ..add('products', products)
          ..add('total', total)
          ..add('methodOfPayment', methodOfPayment)
          ..add('date', date)
          ..add('instructions', instructions)
          ..add('status', status)
          ..add('review', review))
        .toString();
  }
}

class OrderBuilder implements Builder<Order, OrderBuilder> {
  _$Order? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _companyId;
  String? get companyId => _$this._companyId;
  set companyId(String? companyId) => _$this._companyId = companyId;

  AddressPointBuilder? _address;
  AddressPointBuilder get address =>
      _$this._address ??= new AddressPointBuilder();
  set address(AddressPointBuilder? address) => _$this._address = address;

  ListBuilder<CartItem>? _products;
  ListBuilder<CartItem> get products =>
      _$this._products ??= new ListBuilder<CartItem>();
  set products(ListBuilder<CartItem>? products) => _$this._products = products;

  double? _total;
  double? get total => _$this._total;
  set total(double? total) => _$this._total = total;

  PaymentMethod? _methodOfPayment;
  PaymentMethod? get methodOfPayment => _$this._methodOfPayment;
  set methodOfPayment(PaymentMethod? methodOfPayment) =>
      _$this._methodOfPayment = methodOfPayment;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _instructions;
  String? get instructions => _$this._instructions;
  set instructions(String? instructions) => _$this._instructions = instructions;

  StatusOrder? _status;
  StatusOrder? get status => _$this._status;
  set status(StatusOrder? status) => _$this._status = status;

  String? _review;
  String? get review => _$this._review;
  set review(String? review) => _$this._review = review;

  OrderBuilder();

  OrderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _uid = $v.uid;
      _companyId = $v.companyId;
      _address = $v.address.toBuilder();
      _products = $v.products.toBuilder();
      _total = $v.total;
      _methodOfPayment = $v.methodOfPayment;
      _date = $v.date;
      _instructions = $v.instructions;
      _status = $v.status;
      _review = $v.review;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Order other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Order;
  }

  @override
  void update(void Function(OrderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Order build() {
    _$Order _$result;
    try {
      _$result = _$v ??
          new _$Order._(
              id: BuiltValueNullFieldError.checkNotNull(id, 'Order', 'id'),
              uid: BuiltValueNullFieldError.checkNotNull(uid, 'Order', 'uid'),
              companyId: BuiltValueNullFieldError.checkNotNull(
                  companyId, 'Order', 'companyId'),
              address: address.build(),
              products: products.build(),
              total: BuiltValueNullFieldError.checkNotNull(
                  total, 'Order', 'total'),
              methodOfPayment: BuiltValueNullFieldError.checkNotNull(
                  methodOfPayment, 'Order', 'methodOfPayment'),
              date:
                  BuiltValueNullFieldError.checkNotNull(date, 'Order', 'date'),
              instructions: instructions,
              status: BuiltValueNullFieldError.checkNotNull(
                  status, 'Order', 'status'),
              review: review);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'address';
        address.build();
        _$failedField = 'products';
        products.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Order', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$AddressPoint extends AddressPoint {
  @override
  final String? id;
  @override
  final String contactName;
  @override
  final String contactPhone;
  @override
  final String address;
  @override
  final String city;

  factory _$AddressPoint([void Function(AddressPointBuilder)? updates]) =>
      (new AddressPointBuilder()..update(updates)).build();

  _$AddressPoint._(
      {this.id,
      required this.contactName,
      required this.contactPhone,
      required this.address,
      required this.city})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        contactName, 'AddressPoint', 'contactName');
    BuiltValueNullFieldError.checkNotNull(
        contactPhone, 'AddressPoint', 'contactPhone');
    BuiltValueNullFieldError.checkNotNull(address, 'AddressPoint', 'address');
    BuiltValueNullFieldError.checkNotNull(city, 'AddressPoint', 'city');
  }

  @override
  AddressPoint rebuild(void Function(AddressPointBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddressPointBuilder toBuilder() => new AddressPointBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddressPoint &&
        id == other.id &&
        contactName == other.contactName &&
        contactPhone == other.contactPhone &&
        address == other.address &&
        city == other.city;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, id.hashCode), contactName.hashCode),
                contactPhone.hashCode),
            address.hashCode),
        city.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddressPoint')
          ..add('id', id)
          ..add('contactName', contactName)
          ..add('contactPhone', contactPhone)
          ..add('address', address)
          ..add('city', city))
        .toString();
  }
}

class AddressPointBuilder
    implements Builder<AddressPoint, AddressPointBuilder> {
  _$AddressPoint? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _contactName;
  String? get contactName => _$this._contactName;
  set contactName(String? contactName) => _$this._contactName = contactName;

  String? _contactPhone;
  String? get contactPhone => _$this._contactPhone;
  set contactPhone(String? contactPhone) => _$this._contactPhone = contactPhone;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  AddressPointBuilder();

  AddressPointBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _contactName = $v.contactName;
      _contactPhone = $v.contactPhone;
      _address = $v.address;
      _city = $v.city;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddressPoint other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddressPoint;
  }

  @override
  void update(void Function(AddressPointBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddressPoint build() {
    final _$result = _$v ??
        new _$AddressPoint._(
            id: id,
            contactName: BuiltValueNullFieldError.checkNotNull(
                contactName, 'AddressPoint', 'contactName'),
            contactPhone: BuiltValueNullFieldError.checkNotNull(
                contactPhone, 'AddressPoint', 'contactPhone'),
            address: BuiltValueNullFieldError.checkNotNull(
                address, 'AddressPoint', 'address'),
            city: BuiltValueNullFieldError.checkNotNull(
                city, 'AddressPoint', 'city'));
    replace(_$result);
    return _$result;
  }
}

class _$OrdersState extends OrdersState {
  @override
  final BuiltMap<String, Order> order;

  factory _$OrdersState([void Function(OrdersStateBuilder)? updates]) =>
      (new OrdersStateBuilder()..update(updates)).build();

  _$OrdersState._({required this.order}) : super._() {
    BuiltValueNullFieldError.checkNotNull(order, 'OrdersState', 'order');
  }

  @override
  OrdersState rebuild(void Function(OrdersStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrdersStateBuilder toBuilder() => new OrdersStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrdersState && order == other.order;
  }

  @override
  int get hashCode {
    return $jf($jc(0, order.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrdersState')..add('order', order))
        .toString();
  }
}

class OrdersStateBuilder implements Builder<OrdersState, OrdersStateBuilder> {
  _$OrdersState? _$v;

  MapBuilder<String, Order>? _order;
  MapBuilder<String, Order> get order =>
      _$this._order ??= new MapBuilder<String, Order>();
  set order(MapBuilder<String, Order>? order) => _$this._order = order;

  OrdersStateBuilder();

  OrdersStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _order = $v.order.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrdersState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrdersState;
  }

  @override
  void update(void Function(OrdersStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrdersState build() {
    _$OrdersState _$result;
    try {
      _$result = _$v ?? new _$OrdersState._(order: order.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'order';
        order.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OrdersState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CartItem extends CartItem {
  @override
  final String id;
  @override
  final String name;
  @override
  final int quantity;
  @override
  final double price;
  @override
  final String? description;
  @override
  final String mentions;

  factory _$CartItem([void Function(CartItemBuilder)? updates]) =>
      (new CartItemBuilder()..update(updates)).build();

  _$CartItem._(
      {required this.id,
      required this.name,
      required this.quantity,
      required this.price,
      this.description,
      required this.mentions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'CartItem', 'id');
    BuiltValueNullFieldError.checkNotNull(name, 'CartItem', 'name');
    BuiltValueNullFieldError.checkNotNull(quantity, 'CartItem', 'quantity');
    BuiltValueNullFieldError.checkNotNull(price, 'CartItem', 'price');
    BuiltValueNullFieldError.checkNotNull(mentions, 'CartItem', 'mentions');
  }

  @override
  CartItem rebuild(void Function(CartItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CartItemBuilder toBuilder() => new CartItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CartItem &&
        id == other.id &&
        name == other.name &&
        quantity == other.quantity &&
        price == other.price &&
        description == other.description &&
        mentions == other.mentions;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, id.hashCode), name.hashCode), quantity.hashCode),
                price.hashCode),
            description.hashCode),
        mentions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CartItem')
          ..add('id', id)
          ..add('name', name)
          ..add('quantity', quantity)
          ..add('price', price)
          ..add('description', description)
          ..add('mentions', mentions))
        .toString();
  }
}

class CartItemBuilder implements Builder<CartItem, CartItemBuilder> {
  _$CartItem? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _mentions;
  String? get mentions => _$this._mentions;
  set mentions(String? mentions) => _$this._mentions = mentions;

  CartItemBuilder();

  CartItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _quantity = $v.quantity;
      _price = $v.price;
      _description = $v.description;
      _mentions = $v.mentions;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CartItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CartItem;
  }

  @override
  void update(void Function(CartItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CartItem build() {
    final _$result = _$v ??
        new _$CartItem._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'CartItem', 'id'),
            name:
                BuiltValueNullFieldError.checkNotNull(name, 'CartItem', 'name'),
            quantity: BuiltValueNullFieldError.checkNotNull(
                quantity, 'CartItem', 'quantity'),
            price: BuiltValueNullFieldError.checkNotNull(
                price, 'CartItem', 'price'),
            description: description,
            mentions: BuiltValueNullFieldError.checkNotNull(
                mentions, 'CartItem', 'mentions'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
