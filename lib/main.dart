import 'package:daytrade/data/core/services/navigation_service.dart';
import 'package:daytrade/routes/routes.dart';
import 'package:daytrade/splash/splash.dart';
import 'package:daytrade/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';
import 'package:oktoast/oktoast.dart';



import 'locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //initialise firebase
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );

  //initialise local storage
  await GetStorage.init();

  //setup dependency injector
  setupLocator();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return OKToast(
      child: ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (BuildContext context, Widget? child) {
          return MaterialApp(
            navigatorKey: locator<NavigationService>().navigatorKey,
            scaffoldMessengerKey: locator<NavigationService>().snackBarKey,
            debugShowCheckedModeBanner: false,
            title: AppStrings.appName,
            theme: ThemeData(primarySwatch: Colors.blue),
            onGenerateRoute: AppRouter.generateRoute,
            //home:  CustomCheckboxDemo(),
            //home: const SplashScreen(),
            // home: const BottomNav(selectedIndex: 0,),
            //home:   TransactionBreakdown(),
            //home: OptionsMenu(),
            home: const SplashScreen()
          );
        },
      ),
    );
  }
}
