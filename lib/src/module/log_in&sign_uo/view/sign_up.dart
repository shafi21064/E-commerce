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
import 'package:internship_project/src/module/log_in&sign_uo/local_widget/terms&policy.dart';
import 'package:internship_project/src/module/log_in&sign_uo/view/log_in.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextMedium(
          text: 'Sign Up',
          fontSize: 16.sp,
          color: Colors.white,
        ),
        backgroundColor: const Color(0xff72142C),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 42.w),
            child: Column(
              children: [
                SizedBox(
                    height: 54.h,
                    width: 187.w,
                    child: const Image(
                      image: AssetImage('assets/icons/main_logo.png'),
                      //fit: BoxFit.cover,
                    )),
                SpaceInHeight(height: 54.8.h),
                const InputForm(
                  hintText: 'First Name',
                  //prefixIcon: Image.asset('assets/icons/telephone.png'),
                ),
                SpaceInHeight(height: 13.h),
                const InputForm(
                  hintText: 'Email',
                  //prefixIcon: Image.asset('assets/icons/lock.png'),
                  //suffixIcon: Image.asset('assets/icons/eye.png'),
                ),
                SpaceInHeight(height: 13.h),
                const InputForm(
                  hintText: 'Password',
                  //prefixIcon: Image.asset('assets/icons/lock.png'),
                  //: Image.asset('assets/icons/eye.png'),
                ),
                SpaceInHeight(height: 13.h),
                const InputForm(
                  hintText: 'Phone Number',
                  //prefixIcon: Image.asset('assets/icons/lock.png'),
                  //suffixIcon: Image.asset('assets/icons/eye.png'),
                ),
                SpaceInHeight(height: 9.h),
                Row(
                  children: [
                    Checkbox(
                      activeColor: CustomColor.primaryColor,
                      value: isChecked,
                      tristate: false,
                      onChanged: (newValue){
                        isChecked = newValue;
                        print(newValue);
                      },
                    ),
                    TermsAndPolicy()
                  ],
                ),
                SpaceInHeight(height: 11.h),
                 CustomBigButton(
                   buttonName: 'Create Account',
                  onTap: (){},
                ),
                SpaceInHeight(height: 122.3.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    TextRegular(
                        text: 'Already Have An Account? ',
                        color: const Color(0xff6E6E6E),
                        fontSize: 14.sp),
                    ButtonText(
                      onTap: ()=>Navigator.push(context, MaterialPageRoute(
                          builder: (context)=> const LogInScreen())),
                      buttonTxt: 'Log in',
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
