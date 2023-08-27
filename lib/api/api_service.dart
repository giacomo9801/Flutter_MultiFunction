import 'dart:developer';

import 'package:functions/api/constants.dart';
import 'package:functions/api/model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<List<Crypto>?> getCrypto() async {
    try {
      var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.usersEndpoint);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<Crypto> model = cryptoFromJson(response.body);
        return model;
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
