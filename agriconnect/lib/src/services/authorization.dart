import 'package:agriconnect/src/constants/urls.dart';
import 'package:agriconnect/src/models/person.dart';
import 'package:agriconnect/src/states/state.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

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

Future<String> login(String username, String password) async {
  Dio dio = Dio();
  Map<String, dynamic> requestData = {
    'username': username,
    'password': password,
  };

  try {
    var res = await dio.post(Urls.loginPerson, data: requestData);
    token = res.data['token'];
    Map<String, dynamic> requestData1 = {'token': token};
    var res1 = await dio.post(Urls.getId, data: requestData1);

    personId = res1.data['person_id'].toString();

    var res2 = await dio.get(Urls.getAuthandFarm(personId));

    authority = res2.data['authorities'];
    if (authority.length > 0) {
      authority_id = authority[0]['authority_id'].toString();
    }
    farmer = res2.data['farmers'];
    if (farmer.length > 0) {
      farmer_id = farmer[0]['farmer_id'].toString();
    }
    var res3 = await dio.get(Urls.getFarms(personId));

    DataFarm = res3.data['farms'];
    return "Successful";
  } catch (e) {
    print(e);
    return "Invalid username or password";
  }
}

void logout() {
  token = '';
  personId = '';
  authority = [];
  farmer = [];
}
