import 'package:appnation/view_model/api_service_view_model.dart';
import 'package:appnation/wigets/mission_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SpaceX"),
        backgroundColor: Colors.pink,
      ),
      body: Container(
        child: Consumer<ApiServiceViewModel>(
          builder: (context, viewModel, child) =>
              viewModel.spaceXInfoEnum == SpaceXInfoEnum.Loading
                  ? Center(
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.pink),
                      ),
                    )
                  : MissionCardWidget(
                      image: viewModel.spaceXInfo!.links!.patch!.small!,
                      title: viewModel.spaceXInfo!.name,
                      description: viewModel.spaceXInfo!.details,
                    ),
        ),
      ),
    );
  }
}
