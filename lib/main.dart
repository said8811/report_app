
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:report_app/data/api%20service/api_service.dart';
import 'package:report_app/screens/report_screen/report_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:report_app/view%20models/report_view_model.dart';

import 'data/repository/report_repository.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
    ),
  );
  runApp( ChangeNotifierProvider(
      create:(context)=> ReportViewModel(repository: ReportRepository(apiService: ReportApiService())),
      child:const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360,800),
      builder:(context, child) =>  MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ReportScreen(),
      ),
    );
  }
}
