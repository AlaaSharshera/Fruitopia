import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

PreferredSizeWidget customAppBar(BuildContext context, { required String  title}) {
  return AppBar(
    centerTitle: true,
    leading: Padding(
      padding:  EdgeInsets.all(8.r),
      child: CircleAvatar(
        backgroundColor: const Color(0xFFF1F1F5),
        radius: 20.r,
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 19.r,
          child: IconButton(
            icon:  Icon(Icons.arrow_back_ios_new, size: 20.r, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
      ),
    ),
    title: Text(title),
  );
  
}