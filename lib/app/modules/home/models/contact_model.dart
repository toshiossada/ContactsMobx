import 'package:json_annotation/json_annotation.dart';
part 'contact_model.g.dart';

@JsonSerializable()
class ContactModel {
  int id;
  String name;
  String lastName;
  String image;
  String email;
  String tel;
  String get fullName => '${name ?? ''} ${lastName ?? ''}';

  ContactModel({
    this.id,
    this.name,
    this.lastName,
    this.image,
    this.email,
    this.tel,
  });

  ContactModel copyWith({
    int id,
    String name,
    String lastname,
    String image,
    String email,
    String tel,
  }) {
    return ContactModel(
      id: id ?? this.id,
      name: name ?? this.name,
      lastName: lastname ?? this.lastName,
      image: image ?? this.image,
      email: email ?? this.tel,
      tel: tel ?? this.tel,
    );
  }

  factory ContactModel.fromJson(Map<String, dynamic> json) =>
      _$ContactModelFromJson(json);
  Map<String, dynamic> toJson() => _$ContactModelToJson(this);
}
