
import 'dart:async';

import 'package:booklyapp/core/utils/app_router.dart';
import 'package:booklyapp/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'SlidingText.dart';

class SplashPageBody extends StatefulWidget {
  const SplashPageBody({Key? key}) : super(key: key);

  @override
  State<SplashPageBody> createState() => _SplashPageBodyState();
}

class _SplashPageBodyState extends State<SplashPageBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    // TODO: implement initState
    initSlidingAnimation();
    navigateToHome();
    super.initState();
  }




  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
         Image.asset(AssetsData.logo,filterQuality: FilterQuality.high),
        const SizedBox(
          height: 10,
        ),
        SlidingText(slidingAnimation: slidingAnimation)
      ],
    );
  }

  void initSlidingAnimation() {
    animationController=AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2)
    );

    slidingAnimation=Tween(begin:const Offset(0,5) ,end: Offset.zero).animate(animationController) ;
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2),() {
      // Get.to(()=>const HomeView(),duration:  kDurationTime,transition: Transition.fade);
      GoRouter.of(context).pushReplacement(AppRouter.kHomeView );
    },);
  }
}

