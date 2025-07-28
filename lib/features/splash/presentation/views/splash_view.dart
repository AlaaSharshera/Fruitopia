import 'package:flutter/material.dart';
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
        top: 50,
        right: 20,
        child: TextButton(onPressed: (){}, child: Text(S.of(context).appLanguage,style: GoogleFonts.cairoPlay(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xff1B5E37),)))),
      Positioned(top: 0,
      left: 0,
        child: SvgPicture.asset("assets/images/splash_plant.svg")),
      Center(child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/splash.jpg',width: MediaQuery.of(context).size.width*0.8,),
          Text(S.of(context).appName,style: GoogleFonts.cairoPlay(fontSize: 26,fontWeight: FontWeight.bold,color: Color(0xff1B5E37),))
        
        ],
      )),
      Positioned(bottom: 50,
        child: SvgPicture.asset('assets/images/splash-bottom.svg'))
      
    ],),
    );
  }
}