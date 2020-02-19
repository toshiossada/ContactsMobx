// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactModel _$ContactModelFromJson(Map<String, dynamic> json) {
  return ContactModel(
    id: json['id'] as int,
    name: json['name'] as String,
    lastName: json['lastName'] as String,
    image: json['image'] as String,
    email: json['email'] as String,
    tel: json['tel'] as String,
  );
}

Map<String, dynamic> _$ContactModelToJson(ContactModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'lastName': instance.lastName,
      'image': instance.image,
      'email': instance.email,
      'tel': instance.tel,
    };
