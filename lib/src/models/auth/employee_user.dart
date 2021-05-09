part of auth_models;

abstract class EmployeeUser implements Built<EmployeeUser, EmployeeUserBuilder> {
  factory EmployeeUser([void Function(EmployeeUserBuilder b) updates]) = _$EmployeeUser;
  factory EmployeeUser.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  EmployeeUser._();


  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<EmployeeUser> get serializer => _$employeeUserSerializer;
}