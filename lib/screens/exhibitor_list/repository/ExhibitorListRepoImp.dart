import 'package:inter_food_tech/data/remote/network/ApiEndPoints.dart';
import 'package:inter_food_tech/data/remote/network/BaseApiService.dart';
import 'package:inter_food_tech/data/remote/network/NetworkApiService.dart';
import 'package:inter_food_tech/model/ExListModel.dart';
import 'package:inter_food_tech/screens/exhibitor_list/repository/ExhibitorListRepo.dart';

class ExhibitorListRepoImp implements ExhibitorListRepo {
  BaseApiService apiService = NetworkApiService();
  ApiEndPoints apiEndPoints = ApiEndPoints();

  @override
  Future<ExListModel?> getExhibitorList() async {
    try {
      dynamic response = await apiService.makeGetTypeApiRequest(apiEndPoints.getExhibitorList);
      print("MARAJ $response");
      final jsonData = ExListModel.fromJson(response);
      return jsonData;
    } catch(e) {
      throw e;
    }
  }
}