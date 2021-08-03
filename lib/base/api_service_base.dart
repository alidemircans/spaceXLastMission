import 'package:appnation/models/space_x_main_data.dart';

abstract class ApiServiceBase {

 Future<SpaceXAllDataModel> getSpaceXInfo();
}
