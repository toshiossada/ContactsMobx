import 'package:json_annotation/json_annotation.dart';
import 'package:mobx/mobx.dart';
part 'contact_model.g.dart';

@JsonSerializable()
class ContactModel {
  int id;
  String name;
  String lastname;
  String get fullName => '$name $lastname';

  ContactModel({this.id, this.name, this.lastname});

  factory ContactModel.fromJson(Map<String, dynamic> json) =>
      _$ContactModelFromJson(json);
  Map<String, dynamic> toJson() => _$ContactModelToJson(this);
}
