import 'package:flutter/material.dart';

PreferredSizeWidget customAppBar(BuildContext context, { required String  title}) {
  return AppBar(
    centerTitle: true,
    leading: Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        backgroundColor: const Color(0xFFF1F1F5),
        radius: 20,
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 19,
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new, size: 18, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
      ),
    ),
    title: Text(title),
  );
  
}