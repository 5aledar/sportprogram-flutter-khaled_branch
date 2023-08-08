import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:projectsport/core/constant/appImages.dart';
import 'package:projectsport/core/constant/appcolor.dart';
import 'package:projectsport/view/screen/widgets/custom_inkwell_button.dart';
import 'package:projectsport/view/screen/widgets/custombutton.dart';
import 'package:projectsport/view/screen/widgets/customtext.dart';
import '../../../controller/auth/sigin_in_controller/sigin_in.dart';
import '../widgets/custom_text_form_field.dart';

class SignIn extends GetView<SignInController> {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Center(
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 50.h),
                    width: 400.w,
                    height: 200.h,
                    child: Image.asset(
                      AppImages.logo,
                      color: AppColor.blue,
                    )),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Form(
                      child: Column(
                    children: [
                      CustomTextFormField(
                          hintText: "user name or email.. ",
                          iconData: const Icon(Icons.person),
                          onTap: () {},
                          mycontroller: controller.username),
                      CustomTextFormField(
                          hintText: "password",
                          iconData: const Icon(Icons.key),
                          onTap: () {},
                          mycontroller: controller.username),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CustomText(
                            str: "you don't have an account ? ",
                            color: AppColor.black2,
                            fontsize: 16,
                          ),
                          CustomInkwell(
                              str: "Click here",
                              fontsize: 16,
                              fontWeight: FontWeight.w600,
                              onpressed: () {}),
                        ],
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      CustomButton(
                        str: "Login",
                        width: 100.w,
                        onpressed: () async{
                          await controller.signUp();
                        },
                      )
                    ],
                  )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
