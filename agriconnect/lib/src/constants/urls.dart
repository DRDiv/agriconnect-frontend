import 'package:agriconnect/src/states/state.dart';

String host = 'http://10.81.58.241:8000/agri/';

class Urls {
  static String createPerson = host + 'person/';
  static String loginPerson = host + 'agri-token-auth/';
  static String getId = host + 'person/' + 'get_person_id_from_token/';
  static String getAuthandFarm(String personId) {
    return host + 'person/' + personId + '/get_authorities_and_farmers/';
  }

  static String getFarms(String personId) {
    return host + 'farmers/' + personId + '/get_farms/';
  }

  static String generateCode = host + 'authorities/generate_referral_code/';
}
