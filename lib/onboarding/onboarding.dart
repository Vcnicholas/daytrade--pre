import 'package:daytrade/onboarding/onboarding_vm.dart';
import 'package:daytrade/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:macwin/pages/auth/sign_in/sign_in.dart';
import 'package:macwin/pages/auth/sign_up/sign_up.dart';
import 'package:macwin/routes/routes.dart';
import 'package:macwin/utils/app_strings.dart';
import 'package:macwin/utils/constants.dart';
import 'package:macwin/utils/font_manager.dart';
import '../../../utils/app_buttons.dart';
import '../../../utils/app_images.dart';

import '../../base/base_ui.dart';
import 'onboarding.vm.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<OnboardingViewModel>(
        notDefaultLoading:true,
        onModelReady: (model) {
          model.onboarding();
        },
        builder: (context, model, child) => Scaffold(
              backgroundColor: AppColor.white,
              body: Column(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(AppImages.logo),
                              fit: BoxFit.cover, // Adjust the fit as needed
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 200.sp),
                          decoration: BoxDecoration(
                            color: AppColor.white, // Existing color
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.white.withOpacity(0.0),
                                // Fully transparent white at the top
                                Colors.white.withOpacity(0.4),
                                // Fully transparent white at the top
                                Colors.white.withOpacity(0.5),
                                // Fully transparent white at the top
                                Colors.white.withOpacity(0.7),
                                // Fully transparent white at the top
                                Colors.white,
                                // Partially transparent white at the bottom
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: model.getStarted == false
                        ? Container(
                        color: AppColor.white,
                      padding: EdgeInsets.only(left: 20.sp,right: 20.sp),
                            alignment: Alignment.center,
                            child: ListView(
                              children: [
                                Gap(20.sp),
                                AppText(
                                  AppStrings.onboard,
                                  size: FontSize.s34.sp,
                                  isBold: true,
                                ),
                                Gap(20.sp),
                                Container(
                                    margin: EdgeInsets.only(bottom: 60.h),
                                    child:  customProgressIndicator()
                                )
                              ],
                            ))
                        : Container(
                        color: AppColor.white,
                            alignment: Alignment.center,
                            child: ListView(
                              children: [
                                Gap(10.sp),
                                AppText(
                                  "Get Started",
                                  size: FontSize.s24.sp,
                                  align: TextAlign.center,
                                  isBold: true,
                                ),
                                Gap(10.sp),
                                AppText(
                                  " A Thoughtful Journey Towards Inner Peace and\nEmotional Resilience Awaits You.",
                                  align: TextAlign.center,
                                  size: FontSize.s14.sp,
                                ),
                                Gap(20.sp),
                                Container(
                                  margin: EdgeInsets.only(left: 20.sp,right: 20.sp),
                                  child: AppButton(
                                    loading: model.isLoading,
                                    onPressed: (){navigationService.navigateToWidget(const SignIn());},
                                    leadingIcon: AppImages.user,
                                    title: 'Continue with Email',),
                                ),
                                Gap(20.sp),
                                Container(
                                  margin: EdgeInsets.only(left: 20.sp,right: 20.sp),
                                  child: AppButton(
                                    buttonType: ButtonType.outline,
                                    loading: model.isLoading,
                                    onPressed: () => model.signInWithGoogle(),
                                    leadingIcon: AppImages.google,
                                    title: 'Continue with Google',),
                                ),
                              ],
                            )),
                  ),
                ],
              ),
            ));
  }
}
