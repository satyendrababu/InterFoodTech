import 'package:dairy_industry_conference/data/remote/response/Status.dart';
import 'package:dairy_industry_conference/model/ExListModel.dart';
import 'package:dairy_industry_conference/screens/widgets/MyErrorWidget.dart';
import 'package:dairy_industry_conference/screens/widgets/LoadingWidget.dart';
import 'package:dairy_industry_conference/screens/widgets/TextTitle.dart';
import 'package:dairy_industry_conference/utils/size_config.dart';
import 'package:dairy_industry_conference/view_model/ExhibitorListVM.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ExhibitorListBody extends StatefulWidget {
  @override
  State<ExhibitorListBody> createState() => _ExhibitorListBodyState();
}

class _ExhibitorListBodyState extends State<ExhibitorListBody> {
  final ExhibitorListVM exhibitorListVM = ExhibitorListVM();

  @override
  void initState() {
    exhibitorListVM.fetchExhibitorList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
            child: Image.asset(
          'assets/images/home-bg.png',
          fit: BoxFit.cover,
        )),
        ChangeNotifierProvider<ExhibitorListVM>.value(
          value: exhibitorListVM,
          child: Consumer<ExhibitorListVM>(builder: (context, exhibitorListVM, _) {
            switch (exhibitorListVM.exListMain.status) {
              case Status.LOADING:
                return LoadingWidget();
              case Status.ERROR:
                return MyErrorWidget(
                    exhibitorListVM.exListMain.message ?? "NA");
              case Status.COMPLETED:
                return _getExhibitorListView(
                    exhibitorListVM.exListMain.data!.exhibitorList!);
              default:
            }
            return Container();
          }),
        ),
      ],
    );
  }

  Widget _getExhibitorListView(List<ExhibitorList> exList) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: getProportionateScreenHeight(36)),
          const TextTitle(text: 'Exhibitor List'),
          SizedBox(height: getProportionateScreenHeight(25)),
          Expanded(
            child: ListView.builder(
                itemCount: exList.length,
                itemBuilder: (context, position) {
                  return _getListItem(exList[position]);
                }),
          ),
        ],
      ),
    );
  }

  Card _getListItem(ExhibitorList exListModel) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      color: Colors.white,
      child: ListTile(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              exListModel.company!,
              style: const TextStyle(
                  color: Color(0xff363273),
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 4.0),
          ],
        ),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Stall No : ',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              exListModel.stall!,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
            SizedBox(
              width: 70,
            ),
            Text(
              'Hall No : ',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              exListModel.hall!,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
