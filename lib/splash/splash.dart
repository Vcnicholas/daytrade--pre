import 'package:daytrade/splash/splash_vm.dart';
import 'package:daytrade/utils/app_colors.dart';
import 'package:daytrade/utils/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/app_images.dart';
import '../../base/base_ui.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<SplashViewModel>(
        onModelReady: (model) {
          model.splash();
        },
        builder: (context, model, child) => Scaffold(
              backgroundColor: AppColor.white,
              body: Container(
                padding: EdgeInsets.only(left: 30.sp, right: 30.sp),
                height: height(context),
                width: width(context),
                child: Center(
                  child: Container(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppImages.logo,
                            width: 100.w,
                            height: 100.h,
                          ),
                        ],
                      )),
                ),
              ),
            ));
  }
}
