import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/data/global_widget/space_widget/space_in_height.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_medium.dart';
import 'package:internship_project/src/data/global_widget/text_widget/text_regular.dart';
import 'package:internship_project/src/data/utils/custom_color.dart';
import 'package:internship_project/src/module/log_in&sign_uo/local_widget/button_text.dart';
import 'package:internship_project/src/module/log_in&sign_uo/local_widget/input_form.dart';
import 'package:internship_project/src/module/log_in&sign_uo/local_widget/other%20option.dart';
import 'package:internship_project/src/module/log_in&sign_uo/local_widget/other_option_text.dart';
import 'package:internship_project/src/data/global_widget/sign_button.dart';
import 'package:internship_project/src/module/log_in&sign_uo/view/sign_up.dart';
import 'package:internship_project/src/module/nav_bar/nav_bar.dart';


class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextMedium(
          text: 'Sign In',
          fontSize: 16.sp,
          color: Colors.white,
        ),
        backgroundColor: const Color(0xff72142C),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            height: 594.h,
            width: 331.w,
            child: Column(
              children: [
                SizedBox(
                    height: 54.h,
                    width: 187.w,
                    child: const Image(
                      image: AssetImage('assets/icons/main_logo.png'),
                      //fit: BoxFit.cover,
                    )),
                SpaceInHeight(height: 39.1.h),
                 InputForm(
                  hintText: 'Phone Number',
                  prefixIcon: Image.asset('assets/icons/telephone.png'),
                ),
                SpaceInHeight(height: 19.h),
                InputForm(
                  hintText: 'Password',
                  prefixIcon: Image.asset('assets/icons/lock.png'),
                  suffixIcon: Image.asset('assets/icons/eye.png'),
                ),
                  SpaceInHeight(height: 9.h),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ButtonText(
                      onTap: (){},
                      buttonTxt: 'Forgot your password?',
                      txtSize: 15.sp,
                      color: const Color(0xff9A9A9A),
                    ),
                  ],
                ),
                SpaceInHeight(height: 18.h),
                CustomBigButton(
                  buttonName: 'Log in',
                  onTap: ()=>Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> const NavBar())),
                ),
                SpaceInHeight(height: 29.h),
                const OthersOptionText(),
                SpaceInHeight(height: 19.h),
                const OtherOption(),
                SpaceInHeight(height: 32.h),
                TextRegular(
                    text: 'By clicking this button, you agree to our privacy Policy',
                    color: const Color(0xff9A9A9A),
                    fontSize: 12.sp),
                SpaceInHeight(height: 92.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    TextRegular(
                        text: 'Don’t Have An Account? ',
                        color: const Color(0xff6E6E6E),
                        fontSize: 14.sp),
                    ButtonText(
                      onTap: ()=>Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> const SignUpScreen())),
                      buttonTxt: 'Sign Up',
                      txtSize: 14.sp,
                      color: CustomColor.primaryColor,)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
