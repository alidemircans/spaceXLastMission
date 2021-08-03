import 'package:appnation/helper/locator.dart';
import 'package:appnation/models/space_x_main_data.dart';
import 'package:appnation/repository/api_service_repository.dart';
import 'package:flutter/material.dart';

enum SpaceXInfoEnum { Loading, Error, Idle }

class ApiServiceViewModel extends ChangeNotifier {
  ApiServiceViewModel() {
    getSpaceXInfo();
  }
  SpaceXInfoEnum spaceXInfoEnum = SpaceXInfoEnum.Idle;
  ApiServiceRepository _apiServiceRepository = locator<ApiServiceRepository>();

  SpaceXAllDataModel? spaceXInfo;
  getSpaceXInfo() async {
    spaceXInfoEnum = SpaceXInfoEnum.Loading;
    try {
      spaceXInfo = await _apiServiceRepository.getSpaceXInfo();
      spaceXInfoEnum = SpaceXInfoEnum.Idle;
    } catch (e) {
      print("ApiServiceViewModel / getSpaceXInfo $e");
      spaceXInfoEnum = SpaceXInfoEnum.Error;
    }
    notifyListeners();
  }
}
