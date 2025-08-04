import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitopia/constants.dart';
import 'package:fruitopia/core/services/shared_prefrences_singleton.dart';
import 'package:fruitopia/core/widgets/custom_appbar.dart';
import 'package:fruitopia/core/widgets/custom_button.dart';
import 'package:fruitopia/core/widgets/custom_textformfield.dart';
import 'package:fruitopia/generated/l10n.dart';

class NewPassView extends StatelessWidget {
  const NewPassView({super.key});
  static const routeName = '/new-pass-view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: S.of(context).newPasswordTitle),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16.r),
              child: Text(
                S.of(context).newPasswordSubtitle,
                textAlign: Prefs.getString(kAppLanguage) == 'ar'
                    ? TextAlign.right
                    : TextAlign.left,
                style: TextStyle(
                  color: const Color(0xFF0C0D0D),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Cairo',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16.h),
              child: CustomTextFormField(
                hintText: "",
                obscureText: true,
                suffixIcon: Icon(
                  Icons.remove_red_eye,
                  color: Color(0xffC9CECF),
                ),
              ),
            ),
            CustomTextFormField(
              hintText: "",
              obscureText: true,
              suffixIcon: Icon(Icons.remove_red_eye, color: Color(0xffC9CECF)),
            ),
            Padding(
              padding:  EdgeInsets.all(16.r),
              child: CustomButton(text: S.of(context).createNewPassword,onPressed: () {
                
              },),
            ),
          ],
        ),
      ),
    );
  }
}
