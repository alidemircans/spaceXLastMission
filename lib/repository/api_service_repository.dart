import 'package:appnation/helper/locator.dart';
import 'package:appnation/models/space_x_main_data.dart';
import 'package:appnation/services/api_service.dart';
import 'package:appnation/services/base/api_base_serivce.dart';

class ApiServiceRepository implements ApiServiceBaseClass {
  ApiServiceBaseClass _service = locator<ApiService>();

  @override
  Future<SpaceXAllDataModel> getSpaceXInfo() async {
    return await _service.getSpaceXInfo();
  }
}
