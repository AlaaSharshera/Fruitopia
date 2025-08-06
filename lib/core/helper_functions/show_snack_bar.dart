import 'package:flutter/material.dart';
import 'package:fruitopia/core/utils/app_colors.dart';

void showErrorSnackBar(BuildContext context, String errMessage) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(errMessage),
      backgroundColor: AppColors.primaryColor,
    ),
  );
}
