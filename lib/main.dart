import 'package:appnation/view/home.dart';
import 'package:appnation/view_model/api_service_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'helper/locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SpaceX',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (_) => ApiServiceViewModel(),
        child: HomePage(),
      ),
    );
  }
}
