import 'package:dairy_industry_conference/data/remote/network/ApiEndPoints.dart';
import 'package:dairy_industry_conference/data/remote/network/BaseApiService.dart';
import 'package:dairy_industry_conference/data/remote/network/NetworkApiService.dart';
import 'package:dairy_industry_conference/model/ExListModel.dart';
import 'package:dairy_industry_conference/screens/exhibitor_list/repository/ExhibitorListRepo.dart';

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