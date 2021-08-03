import 'dart:convert';

import 'package:appnation/models/space_x_main_data.dart';
import 'package:appnation/services/base/api_base_serivce.dart';
import 'package:http/http.dart' as http;

class ApiService extends ApiServiceBaseClass {
  final String _baseUrl = "https://api.spacexdata.com/v4";

  @override
  Future<SpaceXAllDataModel> getSpaceXInfo() async {
    SpaceXAllDataModel? data;
    Uri uri = Uri.parse("$_baseUrl/launches/latest");
    try {
      var response = await http.get(
        uri,
        headers: _getDefaultHeaders(),
      );
      if (response.statusCode == 200)
        data = SpaceXAllDataModel.fromJson(json.decode(response.body));
    } catch (e) {
      throw UnimplementedError();
    }

    return data!;
  }

  Map<String, String> _getDefaultHeaders() {
    return {
      'Content-type': 'application/json',
      'description': '',
    };
  }
}
