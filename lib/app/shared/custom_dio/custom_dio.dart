import 'package:contatos_mobx/app/shared/utils/settings.dart';
import 'package:dio/dio.dart';

class CustomDio {
  final Dio client;

  CustomDio(this.client) {
    client.options = BaseOptions();
    client.options.baseUrl = '${Settings.apiUrl}}';

    client.options.connectTimeout = 25000;
  }
}
