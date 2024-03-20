import 'package:inter_food_tech/data/remote/response/ApiResponse.dart';
import 'package:inter_food_tech/model/ExListModel.dart';
import 'package:inter_food_tech/screens/exhibitor_list/repository/ExhibitorListRepoImp.dart';
import 'package:flutter/material.dart';

class ExhibitorListVM extends ChangeNotifier {

  final _myRepo = ExhibitorListRepoImp();
  ApiResponse<ExListModel> exListMain = ApiResponse.loading();

  void _setExhibitorMain(ApiResponse<ExListModel> response) {
    print("MARAJ :: $response");
    exListMain = response;
    notifyListeners();
  }

  Future<void> fetchExhibitorList() async {
    _setExhibitorMain(ApiResponse.loading());
    _myRepo
        .getExhibitorList()
        .then((value) => _setExhibitorMain(ApiResponse.completed(value)))
        .onError((error, stackTrace) =>
        _setExhibitorMain(ApiResponse.error(error.toString())));
  }

}