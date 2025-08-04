import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitopia/features/auth/presentation/widgets/custom_checked_box.dart';
import 'package:fruitopia/generated/l10n.dart';

class TermsAndConditionsWidget extends StatefulWidget {
  const TermsAndConditionsWidget({super.key});

  @override
  State<TermsAndConditionsWidget> createState() => _TermsAndConditionsWidgetState();
}

class _TermsAndConditionsWidgetState extends State<TermsAndConditionsWidget> {
  bool isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0,vertical:8.h ),
      child: Row(
        children: [
          CustomCheckedBox(isChecked: isTermsAccepted,onChanged: (value) {
            setState(() {
              isTermsAccepted = value;
            });
          },),
          Expanded(
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: S.of(context).termsOfService,
                    style: TextStyle(
                      color: const Color(0xFF949D9E),
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Cairo',
                    ),
                  ),
                  TextSpan(
                    text: S.of(context).acceptTerms,
                    style: TextStyle(
                      color: const Color(0xFF2D9F5D),
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Cairo',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
