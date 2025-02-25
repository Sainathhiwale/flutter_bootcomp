
import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_2025/screen/HomeAppBar.dart';
import 'package:flutter_bootcamp_2025/screen/HomeDrawer.dart';
import 'package:flutter_bootcamp_2025/screen/HomeFloatingAction.dart';
import 'package:flutter_bootcamp_2025/screen/HomeListViewTile.dart';
import 'package:flutter_bootcamp_2025/screen/HomeRowColumnExpended.dart';
import 'package:flutter_bootcamp_2025/screen/ListViewBuilderHome.dart';
import 'package:flutter_bootcamp_2025/screen/StackWidgetHome.dart';
import 'package:flutter_bootcamp_2025/screen/StateLessFulWidget.dart';
import 'package:flutter_bootcamp_2025/screen/checkbox/formcheckbox.dart';
import 'package:flutter_bootcamp_2025/screen/customswidgets.dart';
import 'package:flutter_bootcamp_2025/screen/dashbroad.dart';
import 'package:flutter_bootcamp_2025/screen/dropdown_spineer/form_dropdown.dart';
import 'package:flutter_bootcamp_2025/screen/home.dart';
import 'package:flutter_bootcamp_2025/screen/mvvm/core/utils/app_routes.dart';
import 'package:flutter_bootcamp_2025/screen/mvvm/data/repositories/auth_repository.dart';
import 'package:flutter_bootcamp_2025/screen/mvvm/data/services/api_service.dart';
import 'package:flutter_bootcamp_2025/screen/mvvm/domain/usecases/login_usecase.dart';
import 'package:flutter_bootcamp_2025/screen/mvvm/presentation/viewmodels/login_viewmodel.dart';
import 'package:flutter_bootcamp_2025/screen/mvvm/presentation/views/splash_screen.dart' show SplashScreen;
import 'package:flutter_bootcamp_2025/screen/navigater/form.dart';
import 'package:flutter_bootcamp_2025/screen/radiobox/FormRadioBox.dart';
import 'package:provider/provider.dart';



void main(){
  runApp( MyApp());
}
// create develop branch
class MyApp extends StatelessWidget{
   MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Flutter App",
      debugShowCheckedModeBanner: false,
      home: FormDropdown(),
    );

   /* return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => LoginViewModel(LoginUseCase(AuthRepository(ApiService()))),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.splash,
        onGenerateRoute: AppRoutes.generateRoute,
      ),
    );*/

  }
}




