import 'package:agriconnect/src/constants/urls.dart';
import 'package:agriconnect/src/models/person.dart';
import 'package:dio/dio.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';

Future<void> register(Person person, String password) async {
  Dio dio = Dio();
  Map<String, dynamic> requestData = {
    'username': person.username,
    'name': person.name,
    'mobile': person.mobile,
    'id_card_type': person.id_card_type,
    'id_card_number': person.id_card_number,
    'password': password
  };

  dio.post(Urls.createPerson, data: requestData);
}

Future<void> login(String username, String password) async {
  Dio dio = Dio();
  Map<String, dynamic> requestData = {
    'username': username,
    'password': password
  };

  var res = dio.post(Urls.createPerson, data: requestData);
  print(res);
  // FlutterSecureStorage flutterSecureStorage = FlutterSecureStorage();
  // flutterSecureStorage.write(key: 'login', value: )
}
