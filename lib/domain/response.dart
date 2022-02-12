import 'package:json_annotation/json_annotation.dart';

part 'response.g.dart';

@JsonSerializable()
class BaseResponse {
  @JsonKey(name: 'status')
  int? status;
  @JsonKey(name: 'message')
  String? message;
}

@JsonSerializable()
class CustomerResponse {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'numOfNotifications')
  String? numOfNotifications;

  CustomerResponse(this.id, this.name, this.numOfNotifications);

  factory CustomerResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomerResponseFromJson(json);



  Map<String,dynamic>toJson()=> _$CustomerResponseToJson(this);
}

@JsonSerializable()
class ContactsResponse {
  @JsonKey(name: 'phone')
  int? phone;
  @JsonKey(name: 'link')
  String? link;
  @JsonKey(name: 'email')
  String? email;

  ContactsResponse(this.phone, this.link, this.email);

  factory ContactsResponse.fromJson(Map<String, dynamic> json) =>
      _$ContactsResponseFromJson(json);



  Map<String,dynamic>toJson()=> _$ContactsResponseToJson(this);
}

@JsonSerializable()
class AuthResponse {
  @JsonKey(name: 'customer')
  CustomerResponse? customer;
  @JsonKey(name: 'contacts')
  ContactsResponse? contacts;

  AuthResponse(this.customer, this.contacts);

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);



  Map<String,dynamic>toJson()=> _$AuthResponseToJson(this);
}
