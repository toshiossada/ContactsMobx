import 'package:json_annotation/json_annotation.dart';
import 'package:mobx/mobx.dart';
part 'contact_model.g.dart';

class ContactModel = _ContactModelBase with _$ContactModel;

abstract class _ContactModelBase with Store {
  int id;
  @observable
  String name;
  @observable
  String lastname;
  @computed
  String get fullName => '$name $lastname';

  _ContactModelBase({this.id, this.name, this.lastname});

  _ContactModelBase.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    lastname = json['lastname'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['lastname'] = this.lastname;
    return data;
  }
}
