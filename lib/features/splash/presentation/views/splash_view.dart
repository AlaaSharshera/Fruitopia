import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruitopia/generated/l10n.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Stack(children: [
      Positioned(
        top: 50.h,
        right: 20.w ,
        child: TextButton(onPressed: (){}, child: Text(S.of(context).appLanguage,style: GoogleFonts.cairoPlay(fontSize: 20.sp,fontWeight: FontWeight.bold,color: Color(0xff1B5E37),)))),
      Positioned(top: 0,
      left: 0,
        child: SvgPicture.asset("assets/images/splash_plant.svg",width: MediaQuery.of(context).size.width*0.5,height: MediaQuery.of(context).size.height*0.2,)),
      Center(child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/splash.jpg',width: MediaQuery.of(context).size.width*0.8,),
          Text(S.of(context).appName,style: GoogleFonts.cairoPlay(fontSize: 26.sp,fontWeight: FontWeight.bold,color: Color(0xff1B5E37),))
        
        ],
      )),
      Positioned(bottom: 50.h,
        child: SvgPicture.asset('assets/images/splash-bottom.svg',width: MediaQuery.of(context).size.width)),
      
    ],),
    );
  }
}