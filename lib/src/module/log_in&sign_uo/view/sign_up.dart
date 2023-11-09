import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../package.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    bool? isCheck = false;
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
                ),
                SpaceInHeight(height: 13.h),
                const InputForm(
                  hintText: 'Email',
                ),
                SpaceInHeight(height: 13.h),
                const InputForm(
                  hintText: 'Password',
                ),
                SpaceInHeight(height: 13.h),
                const InputForm(
                  hintText: 'Phone Number',
                ),
                SpaceInHeight(height: 9.h),
                Row(
                  children: [
                    Checkbox(
                        checkColor: CustomColor.primaryColor,
                        value: isCheck,
                        onChanged: (newValue) {
                          setState(() {
                            isCheck = newValue;
                          });
                        }),
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
